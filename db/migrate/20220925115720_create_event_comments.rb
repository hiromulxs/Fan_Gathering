class CreateEventComments < ActiveRecord::Migration[6.1]
  def change
    create_table :event_comments do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :comment, null: false
      t.timestamps
    end
  end
end
