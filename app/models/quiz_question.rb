class QuizQuestion < ActiveRecord::Base
  belongs_to :quiz
  belongs_to :activity
end
