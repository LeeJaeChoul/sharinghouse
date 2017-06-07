class HomeController < ApplicationController
  def index
    @room = Room.all
  end
end
