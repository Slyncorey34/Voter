class SessionsController < ApplicationController
  def new

  end

  def create
  	@voter = Voter.where(email: params[:email]).first
  	if @voter && @voter.authenticate(params[:password])
			session[:voter_id] = @voter.id
			redirect_to '/intro'
		else
			redirect_to login_path
		end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
