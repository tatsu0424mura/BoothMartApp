class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :name
      t.string :email
      t.string :tel
      t.string :city
      t.string :neighborhood
      t.string :address
      t.string :housing_type
      t.string :pictures
      t.date :start_date
      t.date :end_date
      t.integer :rent
      t.string :pets
      t.string :descriptions

      t.timestamps
    end
  end
end
