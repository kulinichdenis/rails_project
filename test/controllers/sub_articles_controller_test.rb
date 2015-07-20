require 'test_helper'

class SubArticlesControllerTest < ActionController::TestCase
  setup do
    @sub_article = sub_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_article" do
    assert_difference('SubArticle.count') do
      post :create, sub_article: { article_id: @sub_article.article_id, content: @sub_article.content, title: @sub_article.title, user_id: @sub_article.user_id }
    end

    assert_redirected_to sub_article_path(assigns(:sub_article))
  end

  test "should show sub_article" do
    get :show, id: @sub_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_article
    assert_response :success
  end

  test "should update sub_article" do
    patch :update, id: @sub_article, sub_article: { article_id: @sub_article.article_id, content: @sub_article.content, title: @sub_article.title, user_id: @sub_article.user_id }
    assert_redirected_to sub_article_path(assigns(:sub_article))
  end

  test "should destroy sub_article" do
    assert_difference('SubArticle.count', -1) do
      delete :destroy, id: @sub_article
    end

    assert_redirected_to sub_articles_path
  end
end
