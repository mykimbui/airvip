class CreateUserLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :user_languages do |t|
      t.references :users, foreign_key: true
      t.references :languages, foreign_key: true

      t.timestamps
    end
  end
end
