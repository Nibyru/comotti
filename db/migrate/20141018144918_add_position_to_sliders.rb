class AddPositionToSliders < ActiveRecord::Migration
  def change
    add_column :sliders, :position, :integer
  end
end
