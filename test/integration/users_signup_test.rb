require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: "",
                                         email: "user@invalid",
                                         password:              "password",
                                         password_confirmation: "notmypassword" } }
    end
    assert_template 'users/new'
    assert_select   '.field_with_errors'
    assert_select   'div#error_explanation'
  end

# The issues when testing this and getting the `ArgumentError: unknown command 'v'`
# was that each of these tests needed to have their assertions and for some reason I only
# had them at the bottom. Incase you encouter this again make sure the assertions are there for each
# test.

    test "valid signup information" do
      get signup_path
      assert_difference 'User.count', 1 do
        post users_path, params: { user: { name: "Example User",
                                          email:        "user@example.com",
                                          password:              "password",
                                          password_confirmation: "password" } }
    end
  follow_redirect!
  assert_template 'users/show'
  assert_select   '#error_explanation'
  assert_select   '.field_with_errors'
  assert_not      flash.empty?
  end
end
