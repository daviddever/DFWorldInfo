class UndergroundRegionController < ApplicationController
  def index
    @underground_regions = UndergroundRegion.all
  end

  def show
    @underground_region = UndergroundRegion.find(params[:id])
  end
end
