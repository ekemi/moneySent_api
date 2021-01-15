class RemoveLocationFromSender < ActiveRecord::Migration[6.1]
  def change
    remove_reference :senders, :location, null: false, foreign_key: true
  end
end
