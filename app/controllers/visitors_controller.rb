class VisitorsController < ApplicationController

  helper Payola::PriceHelper

  def index
    @products = PayolaModel.page(params[:page]).per(16)
  end
end


