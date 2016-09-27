require 'test_helper'

class DirectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @direct = directs(:one)
  end

  test "should get index" do
    get directs_url
    assert_response :success
  end

  test "should get new" do
    get new_direct_url
    assert_response :success
  end

  test "should create direct" do
    assert_difference('Direct.count') do
      post directs_url, params: { direct: { Directions: @direct.Directions, Name: @direct.Name } }
    end

    assert_redirected_to direct_url(Direct.last)
  end

  test "should show direct" do
    get direct_url(@direct)
    assert_response :success
  end

  test "should get edit" do
    get edit_direct_url(@direct)
    assert_response :success
  end

  test "should update direct" do
    patch direct_url(@direct), params: { direct: { Directions: @direct.Directions, Name: @direct.Name } }
    assert_redirected_to direct_url(@direct)
  end

  test "should destroy direct" do
    assert_difference('Direct.count', -1) do
      delete direct_url(@direct)
    end

    assert_redirected_to directs_url
  end
end
