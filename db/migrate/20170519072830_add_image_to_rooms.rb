class AddImageToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :image, :string
  end
end
