class Question < ActiveRecord::Base
  belongs_to :answers
  belongs_to :quiz
  validates_presence_of :prompt
end
