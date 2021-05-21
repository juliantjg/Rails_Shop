class AddPasswordResetToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :password_token, :string
    add_column :users, :password_token_created_at, :datetime
  end
end
