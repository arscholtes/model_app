require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

   def setup
     @base_title = "Ruby on Rails Tutorial Sample App"
   end

  test "should get root" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end


  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end
   #   assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
   # end
   # ^ left over from the upgrade so that it will be more dynamic in providing page titles
   # test "should get about" do
   #   get static_pages_help_url
   #   assert_response :success
   #   assert_select "title", "About | Ruby on Rails Tutorial Sample App"
   # end
end
