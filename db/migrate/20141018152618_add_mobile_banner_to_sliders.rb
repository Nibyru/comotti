class AddMobileBannerToSliders < ActiveRecord::Migration
  def change
    add_column :sliders, :mobile_banner, :string
  end
end
