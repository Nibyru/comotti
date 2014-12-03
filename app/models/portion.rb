class Portion < ActiveRecord::Base
	belongs_to :product
	validates :size, :price, presence: true
end
