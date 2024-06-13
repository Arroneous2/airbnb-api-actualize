class UsersController < ApplicationController

  def index
    @users = User.all
    render template:"users/index"
  end
end
