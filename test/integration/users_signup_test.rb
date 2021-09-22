require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: "",
                                         email: "user@invalid",
                                         password:              "foo",
                                         password_confirmation: "bar" } }
    end

    test "valid signup information" do
      get signup_path
      assert_difference 'User.count', 1 do
        post user_path, params: { user: { name: "",
        email: "user@invalid",
        password:              "foo",
        password_confirmation: "bar" } }
      end
  follow_redirect!
  assert_template 'users/show'
  assert_select   '#error_explanation'
  assert_select   '.field_with_errors'
  assert_not      flash.empty?

  # Also could do \/ | It was said that checking if it is empty was probably the best way to go about testing flash
  # assert_not    flash.nil?
  # assert_predicate flash[:error], :nil?
  end
end
end
