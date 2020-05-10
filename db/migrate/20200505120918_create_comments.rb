class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :member_id
      t.string :product_id
      t.text :comment

      t.timestamps
    end
  end
end
