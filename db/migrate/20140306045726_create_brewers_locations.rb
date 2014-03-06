class CreateBrewersLocations < ActiveRecord::Migration
  def change
    create_table :brewers_locations do |t|
      t.integer :location_id
      t.integer :brewer_id

      t.timestamps
    end
  end
end
