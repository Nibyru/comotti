class CreateTableProductsVarieties < ActiveRecord::Migration
  def change
    create_table :products_varieties do |t|
    	t.integer :product_id
    	t.integer :variety_id
    end
  end
end
