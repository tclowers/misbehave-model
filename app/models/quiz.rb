class Quiz < ActiveRecord::Base
	has_many :quiz_questions
	has_many :activities, through: :quiz_questions
end
