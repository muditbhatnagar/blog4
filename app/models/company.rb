class Company < ActiveRecord::Base
	has_many :places
	has_many :users
	belongs_to :country
	belongs_to :state
	belongs_to :city

	 validates :company, presence: true
	   validates :company, uniqueness: true
	 validates :country_id, presence: true
	 validates :state_id, presence: true
	 validates :city_id, presence: true
	 validates :postcode, presence: true
	 
end
