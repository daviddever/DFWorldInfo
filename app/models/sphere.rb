class Sphere < ActiveRecord::Base
  has_many :historical_figures, through: :historical_figure_spheres
  has_many :historical_figure_spheres
end
