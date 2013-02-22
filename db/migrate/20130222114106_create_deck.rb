class CreateDeck < ActiveRecord::Migration
  def change
    create_table :deck do |c|
      c.string :topic, :null => false
      c.timestamps
    end
  end
end
