class Portion < ActiveRecord::Base
	attr_accessible :price, :size, :product_id 
	has_and_belongs_to_many :products
	validates :size, :price, presence: true
end
