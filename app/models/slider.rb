class Slider < ActiveRecord::Base
  mount_uploader :banner, BannerUploader
  mount_uploader :mobile_banner, MobileBannerUploader
  validates :banner, :mobile_banner, :title, presence: true
end
