class ChampionshipsController < InheritedResources::Base
  before_action :set_championship, only: [:show, :edit, :update, :destroy]
  before_action :require_login
  
  def require_login
    if not user_signed_in? || admin_signed_in?
      flash[:error] = "Você precisa estar logado para acessar esta seção."
      redirect_to new_user_session_path # halts request cycle
    end
  end
  
  def destroy
    @championship.destroy
    respond_to do |format|
      #1st argument reference the path /posts/:post_id/comments/
      format.html { redirect_to(championships_url) }
      format.xml  { head :ok }
    end
  end
  
  # #Adicionando equipe a campeonato
  # def add_match
  #   @championship = Championship.find(params[:championship_id])
  #   @match = Match.find(params[:match_id])
  #   unless @championship.matches.include? @match
  #     @championship.matches << @match
  #   end
  #   render action: 'show'
  # end
  
  #Deletando jogador da equipe
  def delete_match
    @championship = Championship.find(params[:championship_id])
    @match = @championship.matches.find(params[:id])
    
    @match.destroy
    
    
    render action: 'show'
  end

  private

  def set_championship
    @championship = Championship.find(params[:id])
  end
  
  def championship_params
    params.require(:championship).permit(:name, :prize)
  end
end

