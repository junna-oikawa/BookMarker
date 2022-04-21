require "test_helper"

class BookMarksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get book_marks_new_url
    assert_response :success
  end

  test "should get index" do
    get book_marks_index_url
    assert_response :success
  end

  test "should get create" do
    get book_marks_create_url
    assert_response :success
  end

  test "should get edit" do
    get book_marks_edit_url
    assert_response :success
  end

  test "should get update" do
    get book_marks_update_url
    assert_response :success
  end

  test "should get destroy" do
    get book_marks_destroy_url
    assert_response :success
  end
end
