class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :image_id
      t.text :explanatory
      t.text :shop_url
      t.string :phone_number
      t.string :address

      t.timestamps
    end
  end
end
