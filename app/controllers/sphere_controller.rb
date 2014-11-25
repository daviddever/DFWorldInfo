class SphereController < ApplicationController
  def index
    @spheres = Sphere.all
  end

  def show
    @sphere = Sphere.find(params[:id])
  end
end
