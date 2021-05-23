class CreatePurchasedlists < ActiveRecord::Migration[5.2]
  def change
    create_table :purchasedlists do |t|
      t.integer :item_id

      t.timestamps
    end
  end
end
