class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.text :content
      t.date :time

      t.timestamps
    end
  end
end
