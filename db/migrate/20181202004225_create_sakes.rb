class CreateSakes < ActiveRecord::Migration[5.2]
  def change
    create_table :sakes do |t|
      t.string :japanese_name
      t.string :romanized_name
      t.string :sake_type
      t.integer :brewery_id

      t.timestamps
    end
  end
end
