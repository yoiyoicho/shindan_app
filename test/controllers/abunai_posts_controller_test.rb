require "test_helper"

class AbunaiPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abunai_post = abunai_posts(:one)
  end

  test "should get index" do
    get abunai_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_abunai_post_url
    assert_response :success
  end

  test "should create abunai_post" do
    assert_difference("AbunaiPost.count") do
      post abunai_posts_url, params: { abunai_post: { body: @abunai_post.body, title: @abunai_post.title } }
    end

    assert_redirected_to abunai_post_url(AbunaiPost.last)
  end

  test "should show abunai_post" do
    get abunai_post_url(@abunai_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_abunai_post_url(@abunai_post)
    assert_response :success
  end

  test "should update abunai_post" do
    patch abunai_post_url(@abunai_post), params: { abunai_post: { body: @abunai_post.body, title: @abunai_post.title } }
    assert_redirected_to abunai_post_url(@abunai_post)
  end

  test "should destroy abunai_post" do
    assert_difference("AbunaiPost.count", -1) do
      delete abunai_post_url(@abunai_post)
    end

    assert_redirected_to abunai_posts_url
  end
end
