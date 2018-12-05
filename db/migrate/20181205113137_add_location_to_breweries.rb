class AddLocationToBreweries < ActiveRecord::Migration[5.2]
  def change
    add_column :breweries, :location, :string
  end
end
