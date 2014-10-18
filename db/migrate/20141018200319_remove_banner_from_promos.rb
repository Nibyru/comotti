class RemoveBannerFromPromos < ActiveRecord::Migration
  def change
    remove_column :promos, :banner
  end
end
