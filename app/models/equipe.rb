class Equipe < ApplicationRecord
  has_many :usuario_equipes
  has_many :usuarios, through: :usuario_equipes
end
