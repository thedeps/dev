class MatchesController < InheritedResources::Base
  
  def index
    @matches = Match.all
  end
  private

    def match_params
      params.require(:match).permit(:team1_id, :team2_id, :date_match, :link)
    end
end

