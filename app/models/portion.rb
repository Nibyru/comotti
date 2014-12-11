class Portion < ActiveRecord::Base
	has_and_belongs_to_many :products
	validates :size, :price, presence: true
end
