class Voter < ActiveRecord::Base
	has_many :quizzes

	# has_many :answered_quizzes :class_name => "quiz", :through => :results :foreign_key => "quiz_id"
end
