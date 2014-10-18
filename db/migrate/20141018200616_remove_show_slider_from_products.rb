class RemoveShowSliderFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :show_slider
  end
end
