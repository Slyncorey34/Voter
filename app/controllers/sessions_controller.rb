class SessionsController < ApplicationController
  def new
  end

  def create

  	@voter = User.where(email: params[:email]).first
  end

  def destroy
  end
end
