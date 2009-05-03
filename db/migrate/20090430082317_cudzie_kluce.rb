class CudzieKluce < ActiveRecord::Migration
  def self.up
  execute "ALTER TABLE order_items 
    ADD CONSTRAINT fk_order_items_orders FOREIGN KEY (product_id)
    REFERENCES products(id)ON DELETE CASCADE"
  execute "ALTER TABLE order_items 
    ADD CONSTRAINT fk_order_items_products FOREIGN KEY (order_id)
    REFERENCES orders (id) ON DELETE CASCADE"
  end

  def self.down
  "ALTER TABLE order_items DROP FOREIGN KEY product_id"
  "ALTER TABLE order_items DROP FOREIGN KEY order_id"
  end
end