class RemoveSenderFromLocation < ActiveRecord::Migration[6.1]
  def change
    remove_reference :locations, :sender, null: false, foreign_key: true
  end
end
