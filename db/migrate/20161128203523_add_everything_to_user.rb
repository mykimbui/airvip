class AddEverythingToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :city, :string
    add_column :users, :address, :string
    add_column :users, :role, :string
    add_column :users, :price_per_day, :integer
    add_column :users, :profile_picture, :string
  end
end
