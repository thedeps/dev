class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  before_action :require_login
  
  def require_login
    if not user_signed_in? || admin_signed_in?
      flash[:error] = "Você precisa estar logado para acessar esta seção."
      redirect_to new_user_session_path # halts request cycle
    end
  end
  #Listando todos os times
  def index
    @teams = Team.all.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end
  
  
  def show
    @users_add = Array.new
    @users = User.all.paginate(:page => params[:page], :per_page => 5).order('created_at DESC')
    @users.each do |user|
      unless @team.users.include? user
          @users_add << user
          @users_add.sort!{|a,b| b.id <=> a.id }
      end
    end
  end
  
  # GET /teams/new
  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.captain = current_user.id_steam
    
    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'Equipe criada com sucesso.' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url,notice: 'Equipe excluida com sucesso.'}
      format.xml  { head :ok }
    end
  end
  
  
  
  #Adicionando jogador a equipe
  def add_user
    @team = Team.find_by_id(params[:team_id])
    @user = User.find_by_id(params[:user_id])
    
    unless @team.users.include? @user
      @team.users << @user
    end
    
    @users = User.all.paginate(:page => params[:page], :per_page => 5)
    
    respond_to do |format|
        format.html { redirect_to @team, notice: 'Jogador adicionado com sucesso.' }
        format.json { render :show, status: :created, location: @team }
    end
  end
  
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to teams_path, notice: 'Equipe atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  #Deletando jogador da equipe
  def delete_user
    @team = Team.find(params[:team_id])
    @user = @team.users.find(params[:id])
    
    #Deletando jogador da equipe
    if @user
        @team.users.delete(@user)
    end
    @users = User.all.paginate(:page => params[:page], :per_page => 5)
    
    respond_to do |format|
        format.html { redirect_to @team, notice: 'Jogador Removido com sucesso.' }
        format.json { render :show, status: :created, location: @team }
    end
  end

  private
  
  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name, :tag, :captain)
  end
    
end

