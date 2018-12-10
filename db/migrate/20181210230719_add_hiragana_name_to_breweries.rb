class AddHiraganaNameToBreweries < ActiveRecord::Migration[5.2]
  def change
    add_column :breweries, :hiragana_name, :string
  end
end
