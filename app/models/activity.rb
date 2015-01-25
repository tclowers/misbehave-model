class Activity < ActiveRecord::Base
	has_many :preferences
	has_many :quiz_questions
	has_many :users, through: :preferences
	has_many :quizzes, through: :quiz_questions
	has_and_belongs_to_many :props
end
