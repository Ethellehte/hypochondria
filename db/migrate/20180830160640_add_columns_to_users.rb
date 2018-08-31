class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :date_of_birth, :date
    add_column :users, :blood_type, :integer
    add_column :users, :rhesus_factor, :string
    add_column :users, :brief_information, :text
    add_column :users, :allergy, :text
  end
end
