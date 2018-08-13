class Region < ActiveRecord::Base
	 validates :region_name, uniqueness: true
	 validates :region_name, presence: true
end
