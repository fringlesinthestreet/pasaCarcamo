# frozen_string_literal: true

class CreateWords < ActiveRecord::Migration[6.0]
  def self.up
    create_table :words do |t|
      t.string :name

      t.timestamps
    end
    add_index :words, :name
  end

  def self.down
    drop_table :words
  end
end
