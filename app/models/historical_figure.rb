class HistoricalFigure < ActiveRecord::Base
  has_many :spheres, through: :historical_figure_spheres
end
