require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get index" do
    get static_pages_index_url
    assert_response :success
  end

  test "should get payment" do
    get static_pages_payment_url
    assert_response :success
  end

  test "should get photo_archive_2020" do
    get static_pages_photo_archive_2020_url
    assert_response :success
  end

  test "should get photo_archive_2019" do
    get static_pages_photo_archive_2019_url
    assert_response :success
  end

  test "should get sponsors" do
    get static_pages_sponsors_url
    assert_response :success
  end

end
