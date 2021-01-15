class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :address
      t.references :sender, null: false, foreign_key: true

      t.timestamps
    end
  end
end
