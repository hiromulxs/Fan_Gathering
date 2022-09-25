class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.integer :community_id
      t.string :title
      t.time :time
      t.string :introduction
      t.timestamps
    end
  end
end
