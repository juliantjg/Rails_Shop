class CreateShoppingbags < ActiveRecord::Migration[5.2]
  def change
    create_table :shoppingbags do |t|
      t.integer :item_id
      t.string :colour
      t.string :size
      t.integer :quantity

      t.belongs_to :user, foreign_key:true

      t.timestamps
    end
  end
end
