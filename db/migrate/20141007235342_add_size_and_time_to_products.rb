class AddSizeAndTimeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :size, :string
    add_column :products, :time, :string
  end
end
