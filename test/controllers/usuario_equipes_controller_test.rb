require "test_helper"

class UsuarioEquipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_equipe = usuario_equipes(:one)
  end

  test "should get index" do
    get usuario_equipes_url, as: :json
    assert_response :success
  end

  test "should create usuario_equipe" do
    assert_difference("UsuarioEquipe.count") do
      post usuario_equipes_url, params: { usuario_equipe: { equipe_id: @usuario_equipe.equipe_id, papel: @usuario_equipe.papel, usuario_id: @usuario_equipe.usuario_id } }, as: :json
    end

    assert_response :created
  end

  test "should show usuario_equipe" do
    get usuario_equipe_url(@usuario_equipe), as: :json
    assert_response :success
  end

  test "should update usuario_equipe" do
    patch usuario_equipe_url(@usuario_equipe), params: { usuario_equipe: { equipe_id: @usuario_equipe.equipe_id, papel: @usuario_equipe.papel, usuario_id: @usuario_equipe.usuario_id } }, as: :json
    assert_response :success
  end

  test "should destroy usuario_equipe" do
    assert_difference("UsuarioEquipe.count", -1) do
      delete usuario_equipe_url(@usuario_equipe), as: :json
    end

    assert_response :no_content
  end
end
