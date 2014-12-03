class Product < ActiveRecord::Base
  belongs_to :category
  has_many :variety
  has_many :portions
  mount_uploader :photo, PhotoUploader
  validates :title, :category, :photo, :variety, :portions, presence: true
end
