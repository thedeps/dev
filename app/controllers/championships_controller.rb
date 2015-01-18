class ChampionshipsController < ApplicationController
  before_action :set_championship, only: [:show, :edit, :update, :destroy]
  before_action :require_login
  
  def require_login
    if not user_signed_in? || admin_signed_in?
      flash[:error] = "Você precisa estar logado para acessar esta seção."
      redirect_to new_user_session_path # halts request cycle
    end
  end
  
  def index
    @championships = Championship.all.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end
  
  # GET /championship/new
  def new
    @championship = Championship.new
  end

  def create
    @championship = Championship.new(championship_params)
    
    respond_to do |format|
      if @championship.save
        format.html { redirect_to @championship, notice: 'Campeonato criado com sucesso.' }
        format.json { render :show, status: :created, location: @championship }
      else
        format.html { render :new }
        format.json { render json: @championship.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  def update
    respond_to do |format|
      if @championship.update(championship_params)
        format.html { redirect_to championships_path, notice: 'Campeonato atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @championship }
      else
        format.html { render :edit }
        format.json { render json: @championship.errors, status: :unprocessable_entity }
      end
    end
  end
 
  def show
    @matches = @championship.matches.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
    respond_to do |format|
        format.html
    end
  end
  def destroy
    @championship.destroy
    respond_to do |format|
      format.html { redirect_to championships_url , notice: 'Campeonato excluido com sucesso.' }
      format.xml  { head :ok }
    end
  end
  
  #Deletando jogador da equipe
  def delete_match
    @championship = Championship.find(params[:championship_id])
    @match = @championship.matches.find(params[:id])
    
    @match.destroy
    @matches = @championship.matches.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
    
    respond_to do |format|
      format.html { redirect_to @championship }
      format.xml  { head :ok }
    end
  end

  private

  def set_championship
    @championship = Championship.find(params[:id])
  end
  
  def championship_params
    params.require(:championship).permit(:name, :prize)
  end
end

