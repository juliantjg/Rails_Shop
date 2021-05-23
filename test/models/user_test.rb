require 'test_helper'

class UserTest < ActiveSupport::TestCase
    def setup
        @user = User.create(username: 'RAD', email: 'rad2021rmit@gmail.com', password: 'Rails2021', password_confirmation: 'Rails2021')
    end

    test "user should be valid" do
        assert @user.valid?
    end

    test "username should not be too long" do
        @user.username = "x" * 26
        assert_not @user.valid?
    end

    test "password should not be too short" do
        @user.password = "x" * 6 
        assert_not @user.valid?
    end

    test "password should be 8-20 characters excluding special characters" do
        @user.password = "xxxxxxx*"
        assert_not @user.valid? 
    end

    test "email should have an email format" do
        @user.email = "test"
        assert_not @user.valid?
    end

    test "password should not be too long" do
        @user.password = "x" * 22
        assert_not @user.valid?
    end
end
