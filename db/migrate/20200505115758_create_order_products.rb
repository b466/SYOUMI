class CreateOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :order_products do |t|
      t.integer :product_id
      t.integer :order_id
      t.string :name
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
