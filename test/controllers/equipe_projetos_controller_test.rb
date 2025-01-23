require "test_helper"

class EquipeProjetosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipe_projeto = equipe_projetos(:one)
  end

  test "should get index" do
    get equipe_projetos_url, as: :json
    assert_response :success
  end

  test "should create equipe_projeto" do
    assert_difference("EquipeProjeto.count") do
      post equipe_projetos_url, params: { equipe_projeto: { equipe_id: @equipe_projeto.equipe_id, projeto_id: @equipe_projeto.projeto_id } }, as: :json
    end

    assert_response :created
  end

  test "should show equipe_projeto" do
    get equipe_projeto_url(@equipe_projeto), as: :json
    assert_response :success
  end

  test "should update equipe_projeto" do
    patch equipe_projeto_url(@equipe_projeto), params: { equipe_projeto: { equipe_id: @equipe_projeto.equipe_id, projeto_id: @equipe_projeto.projeto_id } }, as: :json
    assert_response :success
  end

  test "should destroy equipe_projeto" do
    assert_difference("EquipeProjeto.count", -1) do
      delete equipe_projeto_url(@equipe_projeto), as: :json
    end

    assert_response :no_content
  end
end
