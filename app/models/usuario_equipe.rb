class UsuarioEquipe < ApplicationRecord
  belongs_to :usuario
  belongs_to :equipe
end
