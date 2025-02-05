class Api::V2::EquipeProjetosController < ApplicationController
  before_action :set_equipe_projeto, only: %i[ show update destroy ]

  # GET /equipe_projetos
  def index
    @equipe_projetos = EquipeProjeto.all

    render json: @equipe_projetos
  end

  # GET /equipe_projetos/1
  def show
    render json: @equipe_projeto
  end

  # POST /equipe_projetos
  def create
    @equipe_projeto = EquipeProjeto.new(equipe_projeto_params)

    if @equipe_projeto.save
      render json: @equipe_projeto, status: :created, location: api_v2_equipe_projeto_url(@equipe_projeto)
    else
      render json: @equipe_projeto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /equipe_projetos/1
  def update
    if @equipe_projeto.update(equipe_projeto_params)
      render json: @equipe_projeto
    else
      render json: @equipe_projeto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /equipe_projetos/1
  def destroy
    @equipe_projeto.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipe_projeto
      @equipe_projeto = EquipeProjeto.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def equipe_projeto_params
      params.expect(equipe_projeto: [ :equipe_id, :projeto_id ])
    end
end
