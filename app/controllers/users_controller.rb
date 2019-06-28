class UsersController < ApplicationController
  def new; end

  def check
    puts Settings.name
  end
end
