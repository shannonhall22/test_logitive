require 'test_helper'

class MediaPlansControllerTest < ActionController::TestCase
  setup do
    @media_plan = media_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_plan" do
    assert_difference('MediaPlan.count') do
      post :create, media_plan: { objective: @media_plan.objective, title: @media_plan.title }
    end

    assert_redirected_to media_plan_path(assigns(:media_plan))
  end

  test "should show media_plan" do
    get :show, id: @media_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @media_plan
    assert_response :success
  end

  test "should update media_plan" do
    patch :update, id: @media_plan, media_plan: { objective: @media_plan.objective, title: @media_plan.title }
    assert_redirected_to media_plan_path(assigns(:media_plan))
  end

  test "should destroy media_plan" do
    assert_difference('MediaPlan.count', -1) do
      delete :destroy, id: @media_plan
    end

    assert_redirected_to media_plans_path
  end
end
