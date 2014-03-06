class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :age
      t.string :gender
      t.integer :location_id

      t.timestamps
    end
  end
end
