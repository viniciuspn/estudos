class ClientCursosController < ApplicationController
  before_action :set_client_curso, only: [:show, :update, :destroy]

  # GET /client_cursos
  def index
    @client_cursos = ClientCurso.all

    render json: @client_cursos
  end

  # GET /client_cursos/1
  def show
    render json: @client_curso
  end

  # POST /client_cursos
  def create
    @client_curso = ClientCurso.new(client_curso_params)

    if @client_curso.save
      render json: @client_curso, status: :created, location: @client_curso
    else
      render json: @client_curso.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /client_cursos/1
  def update
    if @client_curso.update(client_curso_params)
      render json: @client_curso
    else
      render json: @client_curso.errors, status: :unprocessable_entity
    end
  end

  # DELETE /client_cursos/1
  def destroy
    @client_curso.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_curso
      @client_curso = ClientCurso.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def client_curso_params
      params.require(:client_curso).permit(:client_id, :curso_id, :nota, :starts_at, :ends_at)
    end
end
