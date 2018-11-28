require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without username" do
    user = User.new(username: nil, email: "test@gmail.com", password: "test")
    assert_not user.save
  end
  
  test "should not save user without an email" do
    user = User.new(username: "John", email: nil, password: "test")
    assert_not user.save
  end
  
  test "should not save user without an password" do
    user = User.new(username: "John", email: "test@gmail.com", password: nil)
    assert_not user.save
  end
  
  test "should not save user if another user has the same email" do
    john_smith = User.create(username: "John Smith", email: "john@gmail.com", password: "password")
    john_doe = User.new(username: "John Doe", email: "john@gmail.com", password: "password2")
    assert_not john_doe.save
  end
end
