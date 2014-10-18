class Slider < ActiveRecord::Base
  mount_uploader :banner, BannerUploader
  mount_uploader :banner, MobileBannerUploader
end
