class AddGenreIdToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :genre_id, :integer
  end
end
