class AddPhotoToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :photo, :string
  end
end
