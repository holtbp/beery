class CreateBeersUsers < ActiveRecord::Migration
  def change
    create_table :beers_users do |t|

      t.timestamps
    end
  end
end
