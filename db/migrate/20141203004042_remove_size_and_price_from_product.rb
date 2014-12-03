class RemoveSizeAndPriceFromProduct < ActiveRecord::Migration
  def change
  	remove_column :products, :size
  	remove_column :products, :price
  end
end
