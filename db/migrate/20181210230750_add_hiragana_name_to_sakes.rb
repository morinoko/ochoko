class AddHiraganaNameToSakes < ActiveRecord::Migration[5.2]
  def change
    add_column :sakes, :hiragana_name, :string
  end
end
