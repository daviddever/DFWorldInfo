class HistoricalFigureSphere < ActiveRecord::Base
  belongs_to :historical_figure
  belongs_to :sphere
end
