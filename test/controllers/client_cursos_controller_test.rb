require 'test_helper'

class ClientCursosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_curso = client_cursos(:one)
  end

  test "should get index" do
    get client_cursos_url, as: :json
    assert_response :success
  end

  test "should create client_curso" do
    assert_difference('ClientCurso.count') do
      post client_cursos_url, params: { client_curso: { client_id: @client_curso.client_id, curso_id: @client_curso.curso_id, ends_at: @client_curso.ends_at, nota: @client_curso.nota, starts_at: @client_curso.starts_at } }, as: :json
    end

    assert_response 201
  end

  test "should show client_curso" do
    get client_curso_url(@client_curso), as: :json
    assert_response :success
  end

  test "should update client_curso" do
    patch client_curso_url(@client_curso), params: { client_curso: { client_id: @client_curso.client_id, curso_id: @client_curso.curso_id, ends_at: @client_curso.ends_at, nota: @client_curso.nota, starts_at: @client_curso.starts_at } }, as: :json
    assert_response 200
  end

  test "should destroy client_curso" do
    assert_difference('ClientCurso.count', -1) do
      delete client_curso_url(@client_curso), as: :json
    end

    assert_response 204
  end
end
