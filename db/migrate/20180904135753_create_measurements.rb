class CreateMeasurements < ActiveRecord::Migration[5.1]
  def change
    create_table :measurements do |t|
      t.integer :user_id
      t.integer :measurement_category_id
      t.integer :entry_id
      t.string :string_value
      t.float :integer_value

      t.timestamps
    end
  end
end
