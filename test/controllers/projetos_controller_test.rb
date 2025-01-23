require "test_helper"

class ProjetosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projeto = projetos(:one)
  end

  test "should get index" do
    get projetos_url, as: :json
    assert_response :success
  end

  test "should create projeto" do
    assert_difference("Projeto.count") do
      post projetos_url, params: { projeto: { data_criacao: @projeto.data_criacao, descricao: @projeto.descricao, nome: @projeto.nome } }, as: :json
    end

    assert_response :created
  end

  test "should show projeto" do
    get projeto_url(@projeto), as: :json
    assert_response :success
  end

  test "should update projeto" do
    patch projeto_url(@projeto), params: { projeto: { data_criacao: @projeto.data_criacao, descricao: @projeto.descricao, nome: @projeto.nome } }, as: :json
    assert_response :success
  end

  test "should destroy projeto" do
    assert_difference("Projeto.count", -1) do
      delete projeto_url(@projeto), as: :json
    end

    assert_response :no_content
  end
end
