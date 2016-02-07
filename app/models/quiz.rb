class Quiz < ActiveRecord::Base
	belongs_to :voter
	has_many :questions
	has_many :answers
end
