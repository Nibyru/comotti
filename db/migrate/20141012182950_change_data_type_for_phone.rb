class ChangeDataTypeForPhone < ActiveRecord::Migration
  def self.up
    change_table :messages do |t|
      t.change :phone, :float
      t.change :cellphone, :float
    end
  end
  def self.down
    change_table :messages do |t|
      t.change :phone, :integer
      t.change :cellphone, :integer
    end
  end
end
