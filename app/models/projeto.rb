class Projeto < ApplicationRecord
  has_many :equipe_projetos
  has_many :equipes, through: :equipe_projetos
  has_many :sprints
end
