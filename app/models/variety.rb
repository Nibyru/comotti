class Variety < ActiveRecord::Base
	attr_accessible :name, :product_id
	has_and_belongs_to_many :products
	validates :name, presence: true
end
