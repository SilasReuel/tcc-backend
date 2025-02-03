class UsuarioSerializer < ActiveModel::Serializer
  attributes :id, :nome, :email, :senha, :user_git, :excluido
end
