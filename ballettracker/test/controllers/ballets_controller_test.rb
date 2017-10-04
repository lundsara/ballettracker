require 'test_helper'

class BalletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ballet = ballets(:one)
  end

  test "should get index" do
    get ballets_url
    assert_response :success
  end

  test "should get new" do
    get new_ballet_url
    assert_response :success
  end

  test "should create ballet" do
    assert_difference('Ballet.count') do
      post ballets_url, params: { ballet: { ballerina: @ballet.ballerina, choreographer: @ballet.choreographer, composer: @ballet.composer, name: @ballet.name } }
    end

    assert_redirected_to ballet_url(Ballet.last)
  end

  test "should show ballet" do
    get ballet_url(@ballet)
    assert_response :success
  end

  test "should get edit" do
    get edit_ballet_url(@ballet)
    assert_response :success
  end

  test "should update ballet" do
    patch ballet_url(@ballet), params: { ballet: { ballerina: @ballet.ballerina, choreographer: @ballet.choreographer, composer: @ballet.composer, name: @ballet.name } }
    assert_redirected_to ballet_url(@ballet)
  end

  test "should destroy ballet" do
    assert_difference('Ballet.count', -1) do
      delete ballet_url(@ballet)
    end

    assert_redirected_to ballets_url
  end
end
