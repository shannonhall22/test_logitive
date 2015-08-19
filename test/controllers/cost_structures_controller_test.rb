require 'test_helper'

class CostStructuresControllerTest < ActionController::TestCase
  setup do
    @cost_structure = cost_structures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cost_structures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cost_structure" do
    assert_difference('CostStructure.count') do
      post :create, cost_structure: { name: @cost_structure.name }
    end

    assert_redirected_to cost_structure_path(assigns(:cost_structure))
  end

  test "should show cost_structure" do
    get :show, id: @cost_structure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cost_structure
    assert_response :success
  end

  test "should update cost_structure" do
    patch :update, id: @cost_structure, cost_structure: { name: @cost_structure.name }
    assert_redirected_to cost_structure_path(assigns(:cost_structure))
  end

  test "should destroy cost_structure" do
    assert_difference('CostStructure.count', -1) do
      delete :destroy, id: @cost_structure
    end

    assert_redirected_to cost_structures_path
  end
end
