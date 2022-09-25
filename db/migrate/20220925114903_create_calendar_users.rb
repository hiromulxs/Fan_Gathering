class CreateCalendarUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :calendar_users do |t|
      t.integer :user_id
      t.integer :calendar_id
      t.timestamps
    end
  end
end
