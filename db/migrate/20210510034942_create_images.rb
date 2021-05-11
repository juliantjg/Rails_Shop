class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :item_id
      t.string :image_url

      t.belongs_to :item, foreign_key:true

      t.timestamps
    end
  end
end
