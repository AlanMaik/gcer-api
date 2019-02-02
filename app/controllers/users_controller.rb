# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    user = User.all
    render json: user
    response.set_header('X-Total-Count', user.count)
  end
end
