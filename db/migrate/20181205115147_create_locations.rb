class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.integer :prefecture_code
      
      t.timestamps
    end
  end
end
