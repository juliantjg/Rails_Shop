class CreatePasswordResetUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :password_reset_users do |t|
      t.integer :user_id
      t.string :password_token
      t.string :password_token_created_at
      
      t.timestamps
    end
  end
end
