# frozen_string_literal: true

class ClientsController < ApplicationController
  before_action :authenticate_user!

  def index
    client = Client.all
    render json: client
    response.set_header('X-Total-Count', client.count)
  end

  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Metrics/MethodLength
  def create
    client = Client.create!(
      name: params[:name],
      last_name: params[:last_name],
      email: params[:email],
      cpf: params[:cpf],
      phone: params[:phone],
      birth_date: params[:birth_date],
      sex: params[:sex],
      profession: params[:profession],
      marital_status: params[:marital_status],
      children: params[:children],
      number_children: params[:number_children],
      zip_code: params[:zip_code],
      street: params[:street],
      number: params[:number],
      neighbohood: params[:neighbohood],
      complement: params[:complement],
      city: params[:city],
      state: params[:state],
      name_emergency: params[:name_emergency],
      phone_emergency: params[:phone_emergency],
      doctor: params[:doctor],
      phone_doctor: params[:phone_doctor],
      agreement: params[:agreement],
      number_agreement: params[:number_agreement],
      hospital: params[:hospital]
    )
    render status: :created, json: client
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/MethodLength
end
