require 'test_helper'

class TutorialTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tutorial_type = tutorial_types(:one)
  end

  test "should get index" do
    get tutorial_types_url
    assert_response :success
  end

  test "should get new" do
    get new_tutorial_type_url
    assert_response :success
  end

  test "should create tutorial_type" do
    assert_difference('TutorialType.count') do
      post tutorial_types_url, params: { tutorial_type: { title: @tutorial_type.title } }
    end

    assert_redirected_to tutorial_type_url(TutorialType.last)
  end

  test "should show tutorial_type" do
    get tutorial_type_url(@tutorial_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_tutorial_type_url(@tutorial_type)
    assert_response :success
  end

  test "should update tutorial_type" do
    patch tutorial_type_url(@tutorial_type), params: { tutorial_type: { title: @tutorial_type.title } }
    assert_redirected_to tutorial_type_url(@tutorial_type)
  end

  test "should destroy tutorial_type" do
    assert_difference('TutorialType.count', -1) do
      delete tutorial_type_url(@tutorial_type)
    end

    assert_redirected_to tutorial_types_url
  end
end
