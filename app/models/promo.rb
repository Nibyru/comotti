class Promo < ActiveRecord::Base
  belongs_to :category
  mount_uploader :photo, PhotoUploader
  validates :title, :category, :photo, presence: true
end
