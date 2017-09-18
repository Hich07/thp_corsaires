class PostsController < ApplicationController
  def index
    @posts = Corsair.all
  end
end
