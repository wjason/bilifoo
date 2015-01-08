class JewelsController < ApplicationController

  def index
    @sorts = Sort.all
  end

  def show
  end
end
