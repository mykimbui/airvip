class RemoveUserId < ActiveRecord::Migration[5.0]
  def change
    remove_column :user_specialities, :users_id
    add_reference :user_specialities, :user
    remove_column :user_specialities, :speciality_id
    add_reference :user_specialities, :speciality
  end
end
