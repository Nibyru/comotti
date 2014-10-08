class AddSizeAndTimeToPromos < ActiveRecord::Migration
  def change
    add_column :promos, :size, :string
    add_column :promos, :time, :string
  end
end
