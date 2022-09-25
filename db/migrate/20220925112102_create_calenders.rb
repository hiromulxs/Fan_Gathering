class CreateCalenders < ActiveRecord::Migration[6.1]
  def change
    create_table :calenders do |t|
      t.integer :community_id
      t.string :prefectures
      t.string :venue
      t.time :product_sales
      t.time :opening_time
      t.time :start_time
      t.integer :drink_fee
      t.string :venue_information
      t.text :postscript
      t.timestamps
    end
  end
end
