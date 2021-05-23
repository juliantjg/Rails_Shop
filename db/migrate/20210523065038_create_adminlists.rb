class CreateAdminlists < ActiveRecord::Migration[5.2]
  def change
    create_table :adminlists do |t|
      t.string :email

      t.timestamps
    end
  end
end
