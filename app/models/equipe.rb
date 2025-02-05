class Equipe < ApplicationRecord
  has_many :equipe_projetos
  has_many :projetos, through: :equipe_projetos
  has_many :usuario_equipes
  has_many :usuarios, through: :usuario_equipes
end
