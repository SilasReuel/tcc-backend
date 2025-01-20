class Usuario < ApplicationRecord
  has_many :usuario_equipes
  has_many :equipes, through: :usuario_equipes
end
