class AddStatusToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :status, :string
  end
end
