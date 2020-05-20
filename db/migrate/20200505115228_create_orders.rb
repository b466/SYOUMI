class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :member_id
      t.string :pay_type
      t.integer :total_price
      t.integer :product_id
      t.timestamps
    end
  end
end
