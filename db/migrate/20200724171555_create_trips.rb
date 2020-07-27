class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :activities
      t.text :img
      t.text :description
      t.text :leaders
      t.text :location
      t.date :leave_date
      t.date :return_date
      t.datetime :signup_time
      t.string :singup_style
      t.integer :cost
      t.integer :deposit
      t.string :contact
      t.integer :max_capacity
      t.boolean :driver_discount
      t.integer :driver_cost
      t.string :experiance_level
      t.string :signup_location

      t.timestamps
    end
  end
end
