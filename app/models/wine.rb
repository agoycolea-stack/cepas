class Wine < ApplicationRecord

  has_many :assemblies
  has_many :strains, through: :assemblies

end
