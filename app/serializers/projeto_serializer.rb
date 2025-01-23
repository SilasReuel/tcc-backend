class ProjetoSerializer < ActiveModel::Serializer
  attributes :id, :nome, :descricao, :data_criacao
end
