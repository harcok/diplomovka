class CreateOrderItems < ActiveRecord::Migration
  def self.up
    create_table :order_items do |t|
      t.integer :product_id, :null => false
      t.integer :order_id, :null => false      
      t.integer :mnozstvo, :null => false 
      t.decimal :celkova_cena, :null => false, :precision => 8, :scale => 2 
        
      t.timestamps
    end
  end

  def self.down
    drop_table :order_items
  end
end
