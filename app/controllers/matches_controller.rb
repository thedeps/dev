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
  
  def new
    @match = Match.new
    if not Championship.find_by_id(params[:championship_id]).blank?
      $championship = Championship.find_by_id(params[:championship_id])
    end
  end
  
  def create
    @match = Match.new(match_params)
    unless @match.friendly == 1
      respond_to do |format|
        if @match.save
          format.html { redirect_to matches_path notice: 'Partida criada com sucesso.' }
          format.json { render :show, status: :created, location: @match }
        else
          format.html { render :new }
          format.json { render json: @match.errors, status: :unprocessable_entity }
        end
      end
    else
      unless $championship.matches.include? @match
        $championship.matches << @match
      end
      redirect_to  "/championships/"+$championship.id.to_s
      $championship = nil
    end
  end
  
  private

    def match_params
      params.require(:match).permit(:team1_id, :team2_id, :date_match, :link)
    end
end

