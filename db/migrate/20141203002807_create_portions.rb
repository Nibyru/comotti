class CreatePortions < ActiveRecord::Migration
  def change
    create_table :portions do |t|
      t.string :size
      t.float :price
      t.integer :product_id

      t.timestamps
    end
  end
end
