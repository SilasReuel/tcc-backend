class Api::V2::UsuarioEquipesController < ApplicationController
  before_action :set_usuario_equipe, only: %i[ show update destroy ]

  # GET /usuario_equipes
  def index
    @usuario_equipes = UsuarioEquipe.all

    render json: @usuario_equipes
  end

  # GET /usuario_equipes/1
  def show
    render json: @usuario_equipe
  end

  # POST /usuario_equipes
  def create
    @usuario_equipe = UsuarioEquipe.new(usuario_equipe_params)

    if @usuario_equipe.save
      render json: @usuario_equipe, status: :created, location: @usuario_equipe
    else
      render json: @usuario_equipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usuario_equipes/1
  def update
    if @usuario_equipe.update(usuario_equipe_params)
      render json: @usuario_equipe
    else
      render json: @usuario_equipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usuario_equipes/1
  def destroy
    @usuario_equipe.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_equipe
      @usuario_equipe = UsuarioEquipe.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def usuario_equipe_params
      params.expect(usuario_equipe: [ :usuario_id, :equipe_id, :papel ])
    end
end
