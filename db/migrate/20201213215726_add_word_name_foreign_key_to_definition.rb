# frozen_string_literal: true

class AddWordNameForeignKeyToDefinition < ActiveRecord::Migration[6.0]
  def self.up
    add_reference :definitions, :word, foreign_key: true
  end

  def self.down
    remove_reference :definitions, :word
  end
end
