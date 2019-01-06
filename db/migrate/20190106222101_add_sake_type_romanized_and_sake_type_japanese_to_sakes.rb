class AddSakeTypeRomanizedAndSakeTypeJapaneseToSakes < ActiveRecord::Migration[5.2]
  def change
    add_column :sakes, :sake_type_romanized, :string
    add_column :sakes, :sake_type_japanese, :string
  end
end
