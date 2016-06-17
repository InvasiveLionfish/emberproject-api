module Api
  module V1
class UsersController < ApplicationController

  def create
    binding.pry
    @user = User.new
  end
end

end
end 