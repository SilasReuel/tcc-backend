class SprintSerializer < ActiveModel::Serializer
  attributes :id, :nome, :data_inicio, :data_fim
end
