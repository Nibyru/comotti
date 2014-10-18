class RemoveShowSliderFromPromos < ActiveRecord::Migration
  def change
    remove_column :promos, :show_slider
  end
end
