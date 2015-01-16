class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_login
  
  def require_login
    if not user_signed_in? || admin_signed_in?
      flash[:error] = "Você precisa estar logado para acessar esta seção."
      redirect_to new_user_session_path # halts request cycle
    end
  end
  #Listando todos os times
  def index
    @users = User.all.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end
  
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url,notice: 'Usuário excluida com sucesso.'}
      format.xml  { head :ok }
    end
  end
  
  private
  
  def set_user
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:match).permit(:login, :id_steam, :email, :password, :password_confirmation,:category_id,:team_id)
  end

end

