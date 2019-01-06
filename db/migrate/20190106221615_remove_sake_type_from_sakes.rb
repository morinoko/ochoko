class RemoveSakeTypeFromSakes < ActiveRecord::Migration[5.2]
  def change
    remove_column :sakes, :sake_type
  end
end
