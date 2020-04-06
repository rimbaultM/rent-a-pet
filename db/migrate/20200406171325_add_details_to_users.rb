class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :phone_number, :string
    add_column :users, :address, :string
  end
end
