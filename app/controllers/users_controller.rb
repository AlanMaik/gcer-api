# frozen_string_literal: true

class UsersController < ApplicationController
  # before_action :authenticate_user!

  def index
    user = User.all
    render json: user
    response.set_header('X-Total-Count', user.count)
  end

  # rubocop:disable Metrics/MethodLength, Metrics/AbcSize
  def create
    user = User.create!(
      name: params[:name],
      email: params[:email],
      last_name: params[:last_name],
      kind: params[:kind],
      cpf: params[:cpf],
      phone: params[:phone],
      specialties_id: params[:specialty],
      password: params[:password]
    )
    render status: :created, json: user
  end

  def update
    user = User.find(params[:id])
    user.update!(
      name: params[:name],
      email: params[:email],
      last_name: params[:last_name],
      kind: params[:kind],
      cpf: params[:cpf],
      phone: params[:phone],
      specialties_id: params[:specialties_id]
    )

    render json: user
  end
  # rubocop:enable Metrics/MethodLength, Metrics/AbcSize
end
