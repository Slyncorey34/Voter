class Voter < ActiveRecord::Base
	has_many :quizzes
	# validates_presence_of :email
	# validates_format_of :email, with: /regex/i
	# validates_presence_of :password
	# validates_uniqueness_of :email
	# validates_length_of :password, minimum: 3

	# has_many :answered_quizzes :class_name => "quiz", :through => :results :foreign_key => "quiz_id"
	validates :password,
          presence: true,
          length: { minimum: 5 }
	validates :email,
			uniqueness: true,
			presence: true,
			format: { with: /regex/i }
end
