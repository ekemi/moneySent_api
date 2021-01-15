class CreateReceivers < ActiveRecord::Migration[6.1]
  def change
    create_table :receivers do |t|
      t.string :first_name
      t.string :last_name
      t.references :sender, null: false, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
