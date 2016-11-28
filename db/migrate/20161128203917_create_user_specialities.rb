class CreateUserSpecialities < ActiveRecord::Migration[5.0]
  def change
    create_table :user_specialities do |t|
      t.references :users, foreign_key: true
      t.references :speciality, foreign_key: true

      t.timestamps
    end
  end
end
