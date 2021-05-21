class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.string :description
      # t.string :image
      t.boolean :saveList
      t.string :category
      t.integer :popularity

      t.string :colour_filter
      t.string :size_filter

      t.timestamps
    end
  end
end
