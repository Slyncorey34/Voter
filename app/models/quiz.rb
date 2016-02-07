class Quiz < ActiveRecord::Base
	has_many :results
	has_many :quiz_questions
	has_many :voters, :through => :results, :foreign_key => "voter_id"
	has_many :attempts
end
