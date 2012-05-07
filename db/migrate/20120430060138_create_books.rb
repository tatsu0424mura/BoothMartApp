class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :number
      t.string :title
      t.string :faculty_last
      t.string :faculty_first
      t.integer :price

      t.timestamps
    end
  end
end
