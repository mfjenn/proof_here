class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :search
      t.integer :location_id

      t.timestamps
    end
  end
end
