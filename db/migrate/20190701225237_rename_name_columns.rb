class RenameNameColumns < ActiveRecord::Migration[5.2]
  def change
  	rename_column :breweries, :japanese_name, :name_ja
  	rename_column :breweries, :romanized_name, :name_en
  	rename_column :breweries, :hiragana_name, :name_hiragana
  	rename_column :sakes, :japanese_name, :name_ja
  	rename_column :sakes, :romanized_name, :name_en
  	rename_column :sakes, :hiragana_name, :name_hiragana
  	rename_column :sakes, :sake_type_romanized, :sake_type_en
  	rename_column :sakes, :sake_type_japanese, :sake_type_ja
  end
end
