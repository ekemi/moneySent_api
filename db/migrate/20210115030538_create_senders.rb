class CreateSenders < ActiveRecord::Migration[6.1]
  def change
    create_table :senders do |t|
      t.string :first_name
      t.string :last_name
      t.references :location, null: false, foreign_key: true
      t.string :code
      t.float :amount

      t.timestamps
    end
  end
end
