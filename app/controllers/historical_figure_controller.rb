class HistoricalFigureController < ApplicationController
  def index
    @historical_figures = HistoricalFigure.all
  end

  def show
    @historical_figure = HistoricalFigure.find(params[:id])
  end
end
