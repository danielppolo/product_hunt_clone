require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "#full_name returns a string with the complete name" do
    user = User.new(
      email: 'od.polo@gmail.com',
      first_name: 'Daniel',
      last_name: 'Polo',
      password: '123456'
    )
    full_name = user.full_name
    assert_equal(full_name, 'Daniel Polo')
  end

  test "#full_name works when no last_name" do
    user = User.new(
      email: 'od.polo1@gmail.com',
      first_name: 'daniel',
      password: '123456'
    )
    full_name = user.full_name
    assert_equal(full_name, 'Daniel')
  end

  test "#full_name works when no last_name nor first_name" do
    user = User.new(
      email: 'od.polo1@gmail.com',
      password: '123456'
    )
    full_name = user.full_name
    assert_equal(full_name, '')
  end
end


