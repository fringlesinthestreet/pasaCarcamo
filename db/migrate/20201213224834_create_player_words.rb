class CreatePlayerWords < ActiveRecord::Migration[6.0]
  def self.up
    create_table :player_words do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :player_words
  end
end
