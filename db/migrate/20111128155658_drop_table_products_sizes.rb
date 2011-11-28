class DropTableProductsSizes < ActiveRecord::Migration
  def self.up
    drop_table :products_sizes
  end

  def self.down
    create_table :products_sizes, :id => false do |t|
      t.integer :product_id
      t.integer :size_id
    end
  end
end
