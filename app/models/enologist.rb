class Enologist < ApplicationRecord
  has_many :positions
  has_many :magazines, through: :positions

  has_many :grades
  has_many :wines, through: :grades
end
