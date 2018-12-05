class AddLocationIdToBreweries < ActiveRecord::Migration[5.2]
  def change
    add_column :breweries, :location_id, :integer
  end
end
