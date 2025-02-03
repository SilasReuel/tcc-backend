class Api::V2::UsuariosController < ApplicationController
  before_action :set_usuario, only: %i[ show update destroy ]

  # GET /usuarios
  def index
    @usuarios = Usuario.all

    render json: @usuarios
  end

  # GET /usuarios/1
  def show
    @usuario = Usuario.find(params[:id])
    if @usuario
      render json: @usuario
    else
      render json: @usuario.errors, status: :not_found
    end
  end

  # GET /usuarios/nome/nome
  def show_by_name
    @usuario = Usuario.find_by(nome: params[:nome])
    if @usuario
      render json: @usuario
    end
  end

  # POST /usuarios
  def create
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      render json: @usuario, status: :created, location: api_v2_usuario_url(@usuario)
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usuarios/1
  def update
    if @usuario.update(usuario_params)
      render json: @usuario
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usuarios/1
  def destroy
    @usuario = Usuario.find(params[:id])

    if @usuario.destroy!
      render json: @usuario, status: :no_content
    else
      render json: @usuario.errors, status: :not_found
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def usuario_params
      params.expect(usuario: [ :nome, :senha, :email, :user_git, :excluido ])
    end
end
