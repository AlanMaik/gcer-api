# frozen_string_literal: true

class ServicesController < ApplicationController
  def index
    service = Service.all
    render json: service
    response.set_header('X-Total-Count', service.count)
  end

  def create
    service = Service.create!(
      service: params[:service],
      type_service: params[:type_service],
      price: params[:price],
      duraction: params[:duraction]
    )
    render status: :created, json: service
  end
end
