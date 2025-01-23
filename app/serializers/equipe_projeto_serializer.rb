class EquipeProjetoSerializer < ActiveModel::Serializer
  attributes :id
  has_one :equipe
  has_one :projeto
end
