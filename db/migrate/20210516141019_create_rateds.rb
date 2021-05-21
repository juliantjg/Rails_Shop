class CreateRateds < ActiveRecord::Migration[5.2]
  def change
    create_table :rateds do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
