class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :company
      t.integer :phone
      t.integer :cellphone
      t.string :mail
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
