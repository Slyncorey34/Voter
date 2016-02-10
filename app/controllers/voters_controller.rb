class VotersController < ApplicationController
  def new
  	@voter = Voter.new
  end

  def create

  	@voter = Voter.new(voter_params)
      @voter.conVal = 0
      @voter.libVal = 0
  	if @voter.save
      session[:voter_id] = @voter.id
      flash[:notice] = "User signed in successfully."
    	redirect_to '/intro'
 	  else
 		render 'new'
    flash[:notice] = "There was a problem signing you in."
  	end
  end


  def show
  	@voter = Voter.find(params[:id])
  end


  def edit
  	@voter = Voter.find(params[:id])
  end

  def update
  	@voter = Voter.find(params[:id])
  	if @voter.update_attributes(voter_params)

  		redirect_to intro_path
  	else
  		render edit_voter_path
  	end
  end

  def destroy
  	@voter = Voter.find(params[:id])
  	@voter.destroy
    session.clear
  	redirect_to root_path
  end


  private
  def voter_params
  	params.require(:voter).permit(:email, :password, :libVal, :conVal)
  end
end
