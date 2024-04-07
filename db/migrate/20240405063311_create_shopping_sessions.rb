class CreateShoppingSessions < ActiveRecord::Migration[7.1]
  def change
    create_table :shopping_sessions do |t|
      t.string :user_id
      t.string :total

      t.timestamps
    end
  end
end
