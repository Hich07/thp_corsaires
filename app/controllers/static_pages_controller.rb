class StaticPagesController < ApplicationController
  def home

  end

  def new

  end

  def show

  end

  def edit

  end

  def index
    @corsaires = corsaire.all
  end

end
