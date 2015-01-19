class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]
  before_action :require_login
  
  def require_login
    if not user_signed_in? || admin_signed_in?
      flash[:error] = "Você precisa estar logado para acessar esta seção."
      redirect_to new_user_session_path # halts request cycle
    end
  end
  
  def index
    @matches = Match.all.paginate(:page => params[:page], :per_page => 30).order('created_at DESC')
  end
  
  def new
    @match = Match.new
    if not Championship.find_by_id(params[:championship_id]).blank?
      $championship = Championship.find_by_id(params[:championship_id])
    end
  end
  
  def create
    @match = Match.new(match_params)
    
    if $championship.nil?
      @match.friendly = true
      respond_to do |format|
        if @match.save
          friendly()
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
      @champ = $championship
      $championship = nil
      respond_to do |format|
        format.html { redirect_to  @champ }
        format.xml  { head :ok }
      end
    end
  end
  
  def destroy
    delete_match = @match
    @match.destroy
    destroy_friendly(delete_match)
  end
  
  $friendly_array = Array.new
  def friendly
    @matches = Match.all.paginate(:page => params[:page], :per_page => 30).order('created_at DESC')
    @matches.each do |match|
      if match.friendly == true
        if not $friendly_array.include? match
          $friendly_array << match
          $friendly_array.sort!{|a,b| b.id <=> a.id }
        end
      end
    end
  end
  
  def destroy_friendly(match)
    $friendly_array.each do |friendly|
      if friendly.id == match.id
        $friendly_array.delete(match)
      end
    end
    
    respond_to do |format|
      format.html { redirect_to matches_url,notice: 'Partida excluida com sucesso.'}
      format.xml  { head :ok }
    end
  end
  
  private
  
    def set_match
      @match = Match.find(params[:id])
    end

    def match_params
      params.require(:match).permit(:team1_id, :team2_id, :date_match, :link)
    end
end

