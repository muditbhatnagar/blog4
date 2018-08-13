class UserRole < ActiveRecord::Base
	belongs_to :user

	validates :role_name, presence: true
end
