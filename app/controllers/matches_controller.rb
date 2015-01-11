class MatchesController < InheritedResources::Base
  

  private

    def match_params
      params.require(:match).permit(:team1_id, :team2_id, :date_match, :link)
    end
end

