class Category < ActiveRecord::Base
	attr_accessible :title
 	has_many :products
 	has_many :promos
 	validates :title, presence: true
end
