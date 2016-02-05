class SessionsController < ApplicationController
  def new

  end

  def create
  	@voter = Voter.where(email: params[:email]).first
  	if @voter && @voter.authenticate(params[:password])
			session[:voter_id] = @voter.id
			redirect_to '/intro'
		else
			redirect_to new_session_path
		end
  end

  def destroy
    @voter.delete
  end
end
