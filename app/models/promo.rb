class Promo < ActiveRecord::Base
  attr_accessible :title, :price, :description, :photo, :category_id, :start_date, :end_date, :size, :time 
  belongs_to :category
  mount_uploader :photo, PhotoUploader
  validates :title, :category, :photo, presence: true
end
