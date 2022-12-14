class CreateCalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :calendars do |t|
      t.integer :community_id
      t.string :prefectures, null: false
      t.string :venue, null: false
      t.datetime :product_sales, null: false
      t.datetime :opening_time, null: false
      t.datetime :start_time, null: false
      t.integer :drink_fee
      t.string :venue_information
      t.text :postscript
      t.timestamps
    end
  end
end
