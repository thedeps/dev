class TeamsController < InheritedResources::Base
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  
  #Adicionando jogador a equipe
  def add_user
    @team = Team.find(params[:team_id])
    @user = User.find(params[:user_id])
    unless @team.users.include? @user
      @team.users << @user
    end
    render action: 'show'
  end
  
  #Deletando jogador da equipe
  def delete_user
    @team = Team.find(params[:team_id])
    @user = @team.users.find(params[:id])
    
    #Deletando jogador da equipe
    if @user
        @team.users.delete(@user)
    end
    
    respond_to do |format|
      #1st argument reference the path /posts/:post_id/comments/
      format.html { redirect_to(teams_path) }
    end
  end
  
  # GET /teams/new
  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.captain = current_user.id_steam
    
    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'Equipe criada com sucesso.' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @team.destroy
    respond_to do |format|
      #1st argument reference the path /posts/:post_id/comments/
      format.html { redirect_to(teams_url) }
      format.xml  { head :ok }
    end
  end

  private
  
  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name, :tag, :captain)
  end
    
end

