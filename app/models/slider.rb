class Slider < ActiveRecord::Base
  attr_accessible :title, :banner, :show_slider, :position, :mobile_banner
  mount_uploader :banner, BannerUploader
  mount_uploader :mobile_banner, MobileBannerUploader
  validates :banner, :mobile_banner, :title, presence: true
end
