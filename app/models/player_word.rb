# frozen_string_literal: true

class PlayerWord < ApplicationRecord
  # JOIN TABLE between Player and Word.

  belongs_to :player
  belongs_to :word
end
