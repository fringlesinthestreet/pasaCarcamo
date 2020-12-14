class AddForeignKeysToPlayerWord < ActiveRecord::Migration[6.0]
  def self.up
    add_reference :player_words, :word, foreign_key: true
    add_reference :player_words, :player, foreign_key: true
  end

  def self.down
    remove_reference :player_words, :word
    remove_reference :player_words, :player
  end
end
