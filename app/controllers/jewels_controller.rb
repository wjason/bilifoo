class JewelsController < ApplicationController

  def index
    # if params
    #   # @jewels = Jewel.desc_by_created_params params
    # else
      @jewels = Jewel.all
    # end
  end

  def show
    @jewel = Jewel.find params[:id]
  end

end
