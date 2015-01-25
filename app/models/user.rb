class User < ActiveRecord::Base
	has_many :preferences
	has_many :activities, through: :preferences
end
