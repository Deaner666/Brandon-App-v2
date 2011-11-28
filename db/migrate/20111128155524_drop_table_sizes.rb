class DropTableSizes < ActiveRecord::Migration
  def self.up
    drop_table :sizes
  end

  def self.down
    create_table :sizes do |t|
      t.string :name

      t.timestamps
    end
  end
end
