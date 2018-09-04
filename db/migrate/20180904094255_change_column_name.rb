class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :measurment_categories, :input_type, :measurment_type
  end
end
