class Category < ActiveRecord::Base
  has_many :products
  has_many :promos
  validates :title, presence: true
end
