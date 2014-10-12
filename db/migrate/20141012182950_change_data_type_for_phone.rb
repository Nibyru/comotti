class ChangeDataTypeForPhone < ActiveRecord::Migration
  def self.up
    change_table :messages do |t|
      t.change :phone, :double
      t.change :cellphone, :double
    end
  end
  def self.down
    change_table :messages do |t|
      t.change :phone, :double
      t.change :cellphone, :double
    end
  end
end
