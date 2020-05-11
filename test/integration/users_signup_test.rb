require 'test_helper'

class UsersSignupTest < ActionDispatch:IntegrationTest

    test "valid signup information" do
        get signup_path

    end
end