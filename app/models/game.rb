class Game < ApplicationRecord
  has_many :attempts
  has_one :word
end
