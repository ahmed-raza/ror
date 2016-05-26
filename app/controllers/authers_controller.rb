class AuthersController < ApplicationController
  def index
    @authers = Auther.all
  end
end
