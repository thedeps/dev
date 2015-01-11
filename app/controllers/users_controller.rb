class UsersController < InheritedResources::Base
  
  #Listando todos os times
  def index
    @users = User.all
  end
  
  def match_params
    params.require(:match).permit(:login, :id_steam, :email, :password, :password_confirmation,:category_id,:team_id)
  end

end

