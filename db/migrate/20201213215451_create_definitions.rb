# frozen_string_literal: true

class CreateDefinitions < ActiveRecord::Migration[6.0]
  def self.up
    create_table :definitions do |t|
      t.string :definition

      t.timestamps
    end
  end

  def self.down
    drop_table :definitions
  end
end
