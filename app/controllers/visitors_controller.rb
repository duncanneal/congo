class VisitorsController < ApplicationController

helper Payola::PriceHelper

  def index
    @products = PayolaModel.all
  end

end