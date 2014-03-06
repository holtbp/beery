class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.integer :brewer_id
      t.integer :style_id
      t.integer :country_id
      t.string :name

      t.timestamps
    end
  end
end
