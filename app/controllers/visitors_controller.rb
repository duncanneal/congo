class VisitorsController < ApplicationController

  def index
    @products = PayolaModel.all
  end

end