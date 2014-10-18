class Slider < ActiveRecord::Base
  mount_uploader :banner, BannerUploader
  mount_uploader :mobile_banner, MobileBannerUploader
end
