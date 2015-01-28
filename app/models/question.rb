class Question < ActiveRecord::Base
  belongs_to :activity
  belongs_to :quiz_question
end
