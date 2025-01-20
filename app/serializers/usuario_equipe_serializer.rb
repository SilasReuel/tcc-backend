class UsuarioEquipeSerializer < ActiveModel::Serializer
  attributes :id, :papel
  belongs_to :usuario, serializer: UsuarioSerializer
  belongs_to :equipe, serializer: EquipeSerializer
end
