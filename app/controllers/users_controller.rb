class UsersController < InheritedResources::Base
  before_action :require_login
  
  def require_login
    if not user_signed_in? || admin_signed_in?
      flash[:error] = "Você precisa estar logado para acessar esta seção."
      redirect_to new_user_session_path # halts request cycle
    end
  end
  #Listando todos os times
  def index
    @users = User.all
  end
  
  def match_params
    params.require(:match).permit(:login, :id_steam, :email, :password, :password_confirmation,:category_id,:team_id)
  end

end

