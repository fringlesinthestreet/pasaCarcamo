class CreatePlayers < ActiveRecord::Migration[6.0]
  def self.up
    create_table :players do |t|
      t.string :name
      t.string :colour

      t.timestamps
    end
    add_index :players, :name
  end

  def self.down
    drop_table :players
  end
end
