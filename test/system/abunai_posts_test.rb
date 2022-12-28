require "application_system_test_case"

class AbunaiPostsTest < ApplicationSystemTestCase
  setup do
    @abunai_post = abunai_posts(:one)
  end

  test "visiting the index" do
    visit abunai_posts_url
    assert_selector "h1", text: "Abunai posts"
  end

  test "should create abunai post" do
    visit abunai_posts_url
    click_on "New abunai post"

    fill_in "Body", with: @abunai_post.body
    fill_in "Title", with: @abunai_post.title
    click_on "Create Abunai post"

    assert_text "Abunai post was successfully created"
    click_on "Back"
  end

  test "should update Abunai post" do
    visit abunai_post_url(@abunai_post)
    click_on "Edit this abunai post", match: :first

    fill_in "Body", with: @abunai_post.body
    fill_in "Title", with: @abunai_post.title
    click_on "Update Abunai post"

    assert_text "Abunai post was successfully updated"
    click_on "Back"
  end

  test "should destroy Abunai post" do
    visit abunai_post_url(@abunai_post)
    click_on "Destroy this abunai post", match: :first

    assert_text "Abunai post was successfully destroyed"
  end
end
