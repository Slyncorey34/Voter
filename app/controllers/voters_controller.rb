class VotersController < ApplicationController
  def new
  	@voter = Voter.new
  end

  def create

  	@voter = Voter.new(voter_params)
  	if @voter.save
<<<<<<< HEAD
  		redirect_to voter_path(@voter)
=======
  		redirect_to '/intro'
>>>>>>> 826b0253533bffe70db00975e81abc53090267ea
 	else
 		render 'new' 
  	end
  end

<<<<<<< HEAD
  def show
  	@voter = Voter.find(params[:id])
  end
=======

>>>>>>> 826b0253533bffe70db00975e81abc53090267ea

  def edit
  	@voter = Voter.find(params[:id])
  end

  def update
  	@voter = Voter.find(params[:id])
  	if @voter.update_attributes(voter_params)
<<<<<<< HEAD
  		redirect_to voter_path(@voter)
=======
  		redirect_to intro_path
>>>>>>> 826b0253533bffe70db00975e81abc53090267ea
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
