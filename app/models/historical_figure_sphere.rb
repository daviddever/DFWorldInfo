class HistoricalFigureSphere < ActiveRecord::Base
  belongs_to :historical_figures
  belongs_to :spheres
end
