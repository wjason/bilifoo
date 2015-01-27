class JewelsController < ApplicationController

  def index
    @jewels = Jewel.desc_by_created_params(params)
    @hot_jewels = Jewel.hot_jewels
  end

  def show
    @jewel = Jewel.find params[:id]
    @hot_jewels = Jewel.hot_jewels
  end

end
