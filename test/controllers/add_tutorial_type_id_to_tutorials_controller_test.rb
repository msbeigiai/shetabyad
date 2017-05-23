require 'test_helper'

class AddTutorialTypeIdToTutorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_tutorial_type_id_to_tutorial = add_tutorial_type_id_to_tutorials(:one)
  end

  test "should get index" do
    get add_tutorial_type_id_to_tutorials_url
    assert_response :success
  end

  test "should get new" do
    get new_add_tutorial_type_id_to_tutorial_url
    assert_response :success
  end

  test "should create add_tutorial_type_id_to_tutorial" do
    assert_difference('AddTutorialTypeIdToTutorial.count') do
      post add_tutorial_type_id_to_tutorials_url, params: { add_tutorial_type_id_to_tutorial: { tutorial_type_id: @add_tutorial_type_id_to_tutorial.tutorial_type_id } }
    end

    assert_redirected_to add_tutorial_type_id_to_tutorial_url(AddTutorialTypeIdToTutorial.last)
  end

  test "should show add_tutorial_type_id_to_tutorial" do
    get add_tutorial_type_id_to_tutorial_url(@add_tutorial_type_id_to_tutorial)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_tutorial_type_id_to_tutorial_url(@add_tutorial_type_id_to_tutorial)
    assert_response :success
  end

  test "should update add_tutorial_type_id_to_tutorial" do
    patch add_tutorial_type_id_to_tutorial_url(@add_tutorial_type_id_to_tutorial), params: { add_tutorial_type_id_to_tutorial: { tutorial_type_id: @add_tutorial_type_id_to_tutorial.tutorial_type_id } }
    assert_redirected_to add_tutorial_type_id_to_tutorial_url(@add_tutorial_type_id_to_tutorial)
  end

  test "should destroy add_tutorial_type_id_to_tutorial" do
    assert_difference('AddTutorialTypeIdToTutorial.count', -1) do
      delete add_tutorial_type_id_to_tutorial_url(@add_tutorial_type_id_to_tutorial)
    end

    assert_redirected_to add_tutorial_type_id_to_tutorials_url
  end
end
