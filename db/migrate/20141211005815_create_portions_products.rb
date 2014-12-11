class CreatePortionsProducts < ActiveRecord::Migration
  def change
    create_table :portions_products do |t|
    	t.integer :product_id
    	t.integer :portion_id
    end
  end
end
