class HistoricalFigure < ActiveRecord::Base
  has many :spheres, through: :historifcal_figure_spheres
end
