class CreateBlockedDays < ActiveRecord::Migration[5.0]
  def change
    create_table :blocked_days do |t|
      t.string :date
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
