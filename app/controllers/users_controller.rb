class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.category = Category.find(params[:category])

    respond_to do |format|
      if @user.save

        UserMailer.confirmation_mail(@user).deliver

        format.html { redirect_to :root, notice: 'Check your e-mail for confirmation' }

      else
        format.html { render :new }

      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def confirmation
  
    @token = Token.find_by(token: params[:token])
    @token.verified = true

    if @token.save
      @user = User.find_by(login: @token.login)
      respond_to do |format|
        format.html { redirect_to @user, notice: 'Email confirmed !' }
      end
    else
      render :edit
    end    

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:login, :id_steam, :email, :password, :category)
    end
end
