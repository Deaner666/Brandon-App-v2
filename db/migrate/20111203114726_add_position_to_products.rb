class AddPositionToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.integer :position
    end
  end

  def self.down
    change_table :products do |t|
      t.remove :position
    end
  end
end
