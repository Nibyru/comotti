class AddCookMethodToProducts < ActiveRecord::Migration
  def change
    add_column :products, :cook_method, :text
  end
end
