class CreateStormtroopers < ActiveRecord::Migration
  def change
    create_table :stormtroopers do |t|
      t.string :name
      t.integer :unit

      t.timestamps null: false
    end
  end
end
