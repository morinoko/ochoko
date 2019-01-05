class AddGradeToSakes < ActiveRecord::Migration[5.2]
  def change
    add_column :sakes, :grade, :string
  end
end
