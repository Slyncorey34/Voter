class Quiz < ActiveRecord::Base
	belongs_to :voter
end


# Add validations to ensure that a checkbox is selected, and only 1 checkbox is selected