class CreateCommunities < ActiveRecord::Migration[6.1]
  def change
    create_table :communities do |t|
      t.integer :user_id
      t.string :name, null: false
      t.text :introduction
      t.string :tag
      
      t.timestamps
    end
  end
end
