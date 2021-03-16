class BusinessesController < ApplicationController
   # GET /business
  def index
    business = Business.all
    render json: business
  end

  # POST /business
  def create
    business = Business.create!(business_params)
    if business
      render json:  { status: :created, business: business }
    else
      business json: business.errors
    end
  end

  private

  def business_params
    # whitelist params
    params.permit(:name, :website, :us_state)
  end

end
