# frozen_string_literal: true

class Game < ApplicationRecord
  has_many :players
  accepts_nested_attributes_for :players, allow_destroy: true
end
