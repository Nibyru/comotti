class Product < ActiveRecord::Base
  attr_accessible :title, :photo, :cook_method, :description, :category_id, :photo_cache, :time

  belongs_to :category
  has_and_belongs_to_many :varieties
  has_and_belongs_to_many :portions
  attr_accessible :variety_ids
  attr_accessible :portion_ids
  mount_uploader :photo, PhotoUploader
  validates :title, :category, :photo, :varieties, :portions, presence: true
end
