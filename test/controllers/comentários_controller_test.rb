require 'test_helper'

class ComentáriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comentário = comentários(:one)
  end

  test "should get index" do
    get comentários_url
    assert_response :success
  end

  test "should get new" do
    get new_comentário_url
    assert_response :success
  end

  test "should create comentário" do
    assert_difference('Comentário.count') do
      post comentários_url, params: { comentário: { conteúdo: @comentário.conteúdo, user_id: @comentário.user_id } }
    end

    assert_redirected_to comentário_url(Comentário.last)
  end

  test "should show comentário" do
    get comentário_url(@comentário)
    assert_response :success
  end

  test "should get edit" do
    get edit_comentário_url(@comentário)
    assert_response :success
  end

  test "should update comentário" do
    patch comentário_url(@comentário), params: { comentário: { conteúdo: @comentário.conteúdo, user_id: @comentário.user_id } }
    assert_redirected_to comentário_url(@comentário)
  end

  test "should destroy comentário" do
    assert_difference('Comentário.count', -1) do
      delete comentário_url(@comentário)
    end

    assert_redirected_to comentários_url
  end
end
