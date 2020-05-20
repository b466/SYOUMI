class AddReferencesToProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :shop, null: true, foreign_key: true
  end
end
