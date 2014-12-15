class SessionsController < ApplicationController

  def new
  end

	def create
	  
	  token = Token.find_by_login(params[:login])

	  # user confirmed e-mail ?
	  if token && token.is_verified?
			@user = User.authenticate(params[:login], params[:password])
			if @user
				flash[:notice] = "You've been logged in."
				session[:user_id] = @user.id
				redirect_to @user
			else
			  flash[:alert] = "There was a problem logging you in."
			  redirect_to log_in_path
			end
		else
			respond_to do |format|
			  format.html { redirect_to log_in_path, notice: 'You need e-mail confirmation' } 
		  end
	  end
	end

	def destroy
		session[:user_id] = nil
		flash[:notice] = "You've been logged out successfully."
		redirect_to "/" # TODO redirect to root
	end

end