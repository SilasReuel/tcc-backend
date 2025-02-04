class Api::V2::ProjetosController < ApplicationController
  before_action :set_projeto, only: %i[ show update destroy ]

  # GET /projetos
  def index
    @projetos = Projeto.all

    render json: @projetos
  end

  # GET /projetos/1
  def show
    render json: @projeto
  end

  # POST /projetos
  def create
    @projeto = Projeto.new(projeto_params)

    if @projeto.save
      render json: @projeto, status: :created, location: api_v2_projeto_url(@projeto)
    else
      render json: @projeto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projetos/1
  def update
    if @projeto.update(projeto_params)
      render json: @projeto
    else
      render json: @projeto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projetos/1
  def destroy
    @projeto.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projeto
      @projeto = Projeto.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def projeto_params
      params.expect(projeto: [ :nome, :descricao, :data_criacao ])
    end
end
