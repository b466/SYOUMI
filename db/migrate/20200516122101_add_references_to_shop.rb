class AddReferencesToShop < ActiveRecord::Migration[5.2]
  def change
  	add_reference :shops, :member, null: true, foreign_key: true
  end
end
