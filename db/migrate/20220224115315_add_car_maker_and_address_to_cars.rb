class AddCarMakerAndAddressToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :car_maker, :string
    add_column :cars, :address, :string
  end
end
