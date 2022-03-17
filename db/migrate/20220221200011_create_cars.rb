class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :date_of_production
      t.string :engine
      t.string :transmission
      t.integer :number_of_miles
      t.string :type_car
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
