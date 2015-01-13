class MatchesController < InheritedResources::Base
  before_action :require_login
  
  def require_login
    if not user_signed_in? || admin_signed_in?
      flash[:error] = "Você precisa estar logado para acessar esta seção."
      redirect_to new_user_session_path # halts request cycle
    end
  end
  
  def index
    @matches = Match.all
  end
  
  private

    def match_params
      params.require(:match).permit(:team1_id, :team2_id, :date_match, :link)
    end
end

