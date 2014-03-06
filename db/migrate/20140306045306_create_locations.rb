class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.string :city
      t.string :state
      t.string :metadata
      t.integer :country_id

      t.timestamps
    end
  end
end
