class CreateTastingNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :tasting_notes do |t|
      t.integer :star_count
      t.text :comment
      t.integer :sake_id
      t.integer :user_id

      t.timestamps
    end
  end
end
