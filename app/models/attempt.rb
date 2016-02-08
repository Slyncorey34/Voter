class Attempt < ActiveRecord::Base
  belongs_to :quiz
  belongs_to :answer
  has_many :lib_points, :thorough  :voter_answers
  has_many :con_points, :though  :voter_answers
end
