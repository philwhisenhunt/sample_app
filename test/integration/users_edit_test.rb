require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  test "unsuccessful edit" do
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), params: { user: { name: "",
                                              email: "foo@invalid",
                                              password: "fo",
                                              password_confirmatino: "ba" } }

    assert_select 'div.alert', text: "The form contains 3 errors."
    assert_template 'users/edit'
    # sleep 1
    # take_screenshot
  end
end
