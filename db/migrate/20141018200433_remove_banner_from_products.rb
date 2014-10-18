class RemoveBannerFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :banner
  end
end
