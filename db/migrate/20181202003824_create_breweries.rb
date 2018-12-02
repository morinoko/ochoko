class CreateBreweries < ActiveRecord::Migration[5.2]
  def change
    create_table :breweries do |t|
      t.string :japanese_name
      t.string :romanized_name

      t.timestamps
    end
  end
end
