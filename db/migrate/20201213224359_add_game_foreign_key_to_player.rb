class AddGameForeignKeyToPlayer < ActiveRecord::Migration[6.0]
  def self.up
    add_reference :players, :game, foreign_key: true
  end

  def self.down
    remove_reference :players, :game
  end
end
