class DashboardController < ApplicationController
  def index
  end
  def report
    render json: {data: RatingScale.data ,success: true}
  end
  
end
