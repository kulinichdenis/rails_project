require 'test_helper'

class ActicleCategoriesControllerTest < ActionController::TestCase
  setup do
    @acticle_category = acticle_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acticle_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acticle_category" do
    assert_difference('ActicleCategory.count') do
      post :create, acticle_category: { article_id: @acticle_category.article_id, category_id: @acticle_category.category_id }
    end

    assert_redirected_to acticle_category_path(assigns(:acticle_category))
  end

  test "should show acticle_category" do
    get :show, id: @acticle_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acticle_category
    assert_response :success
  end

  test "should update acticle_category" do
    patch :update, id: @acticle_category, acticle_category: { article_id: @acticle_category.article_id, category_id: @acticle_category.category_id }
    assert_redirected_to acticle_category_path(assigns(:acticle_category))
  end

  test "should destroy acticle_category" do
    assert_difference('ActicleCategory.count', -1) do
      delete :destroy, id: @acticle_category
    end

    assert_redirected_to acticle_categories_path
  end
end
