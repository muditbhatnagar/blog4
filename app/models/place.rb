class Place < ActiveRecord::Base
	belongs_to :company

	 
	 validates :place_name, presence: true
	 validates :node, presence: true
	 validates :company, presence: true

end
