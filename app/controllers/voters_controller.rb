class VotersController < ApplicationController
  def new
  	@voter = Voter.new
  end

  def create

  	@voter = Voter.new(voter_params)
  	if @voter.save

  	redirect_to '/intro'
 	else
 		render 'new' 
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
  	@voter.delete
  	redirect_to root_path
  end

  private
  def voter_params
  	params.require(:voter).permit(:email, :password)
  end
end
