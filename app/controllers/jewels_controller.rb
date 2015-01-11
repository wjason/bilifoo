class JewelsController < ApplicationController

  def index
    @jewels = Jewel.desc_by_created_params params
  end

  def show
  end

end
