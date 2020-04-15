class User < ApplicationRecord
	validates :username, presence: true
	validates :username, uniqueness: true
	validates :type, presence: true
end
