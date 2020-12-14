class CreateGames < ActiveRecord::Migration[6.0]
  def self.up
    create_table :games do |t|
      t.string :name

      t.timestamps
    end
    add_index :games, :name
  end

  def self.down
    drop_table :games
  end
end
