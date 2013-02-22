class CreateGuess < ActiveRecord::Migration
  def change
    create_table :guess do |c|
      c.integer :card_id, :null => false
      c.integer :round_id, :null => false
      c.text    :attempt
      c.boolean :correct
      c.timestamps
    end
  end
end
