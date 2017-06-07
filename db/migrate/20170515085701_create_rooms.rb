class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :category, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :title,        null: false
      t.string :roomtype,     null: false
      t.string :address
      t.string :deposit,      null: false
      t.string :rent_money,   null: false
      t.text :detail

      t.timestamps null: false
    end
  end
end
