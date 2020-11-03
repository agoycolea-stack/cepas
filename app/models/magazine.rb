class Magazine < ApplicationRecord
  has_many :positions
  has_many :enologist, through: :positions
end
