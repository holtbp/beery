class AddBrewersLocationsTable < ActiveRecord::Migration
  def change
    create_table :brewers_locations do |t|
      t.integer :brewer_id
      t.integer :location_id

      t.timestamps
    end
  end
end
