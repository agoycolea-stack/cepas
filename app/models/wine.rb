class Wine < ApplicationRecord

  has_many :assemblies
  has_many :strains, through: :assemblies

  has_many :grades
  has_many :enologists, through: :grades

  accepts_nested_attributes_for :assemblies

  def strains_detail

    detail = assemblies.map do |assembly|
      "#{assembly.strain_name} (#{assembly.percentage}%)"
    end
    detail.join(",")
  end
end
