class HistoricalFigureLink < ActiveRecord::Base
  belongs_to :historical_figure
  belongs_to :link, class_name: 'HistoricalFigure'
end
