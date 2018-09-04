class CreateMeasurmentCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :measurment_categories do |t|
      t.integer :user_id
      t.string :title
      t.integer :input_type

      t.timestamps
    end
  end
end
