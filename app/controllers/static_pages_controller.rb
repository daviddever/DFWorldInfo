class StaticPagesController < ApplicationController
  def home
    @regions = Region.all
  end

  def help
  end
end
