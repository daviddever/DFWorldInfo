class SphereController < ApplicationController
  def index
    @spheres = Sphere.all
  end

  def show
    @sphere = Sphere.find(params[:id])
    @historical_figure = HistoricalFigureSphere.where(@sphere.id == HistoricalFigureSphere.sphere_id)
  end
end
