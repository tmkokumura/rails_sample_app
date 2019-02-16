require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "Home layout" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", signup_path
  end
  
  test "Contact layout" do
    get contact_path
    assert_select "title", full_title("Contact")
  end
  
  test "Sign up layout" do
    get signup_path
    assert_select "title", full_title("Sign up")
  end
end
