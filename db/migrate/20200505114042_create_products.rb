class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :explanatory
      t.integer :price
      t.string :image_id
      t.boolean :is_sales_status

      t.timestamps
    end
  end
end
