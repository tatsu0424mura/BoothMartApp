class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
