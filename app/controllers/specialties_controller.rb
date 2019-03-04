# frozen_string_literal: true

class SpecialtiesController < ApplicationController
  before_action :authenticate_user!

  def index
    specialty = Specialty.all
    render json: specialty
    response.set_header('X-Total-Count', specialty.count)
  end

  def create
    specialty = Specialty.create!(
      specialty: params['specialty'],
      specialty_description: params['specialty_description']
    )
    render status: :created, json: specialty
  end
end
