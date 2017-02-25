class SalesController < ApplicationController
  def index
    @sales = Sale.all
    respond_to do |format|
      format.html
      format.json { render json: @sales }
    end
  end
end
