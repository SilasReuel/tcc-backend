class Api::V2::DashboardController < ApplicationController
  def dados
    @usuario = Usuario.find(params[:id])

    # Buscar as equipes do usuário
    @equipes = @usuario.equipes

    # Para cada equipe, buscar os projetos associados
    @projetos = @equipes.map do |equipe|
      {
        equipe_id: equipe.id,
        nome: equipe.nome,
        projetos: equipe.projetos.map do |projeto|
          {
            projeto_id: projeto.id,
            nome: projeto.nome,
            sprints: projeto.sprints.map do |sprint|
              {
                sprint_id: sprint.id,
                nome: sprint.nome,
                data_inicio: sprint.data_inicio,
                data_fim: sprint.data_fim
              }
            end
          }
        end
      }
    end

    render json: @projetos
  end
end
