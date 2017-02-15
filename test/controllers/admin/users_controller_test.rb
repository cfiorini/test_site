require 'test_helper'

class Admin::UsersControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup

    sign_in_as User.first
  end
end
