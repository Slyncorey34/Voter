class HomeController < ApplicationController
	def welcome
		# landing page where voter signs up or logs in
	end

	def intro

	@voter = current_voter


	# the intro.html.erb includes the quick definitions and issues "spine" 
	end

	def select
	# the select.html.erb is the page with two options: Rep or Dem
	end

end
