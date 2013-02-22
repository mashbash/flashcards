class CreateRound < ActiveRecord::Migration
  def change
    create_table :round do |c|
      c.integer :deck_id, :null => false
      c.boolean :complete, :default => false
      c.timestamps
    end
  end
end
