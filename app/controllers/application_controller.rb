class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_voter
  def current_voter
  	@current_voter ||= Voter.find(session[:voter_id]) if session[:voter_id]
  end
end
