class HistoricalFigure < ActiveRecord::Base
  has_many :spheres, through: :historical_figure_spheres
  has_many :historical_figure_spheres
  has_many :links, through: :historical_figure_links, source: :link
  has_many :historical_figure_links
end
