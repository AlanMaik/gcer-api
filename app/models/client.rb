# frozen_string_literal: true

class Client < ApplicationRecord
  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Metrics/MethodLength
  def as_json(_options = {})
    {
      id: id,
      name: name,
      last_name: last_name,
      email: email,
      cpf: cpf,
      phone: phone,
      birth_date: birth_date,
      sex: sex,
      profession: profession,
      marital_status: marital_status,
      children: children,
      number_children: number_children,
      zip_code: zip_code,
      street: street,
      number: number,
      neighbohood: neighbohood,
      complement: complement,
      city: city,
      state: state,
      name_emergency: name_emergency,
      phone_emergency: phone_emergency,
      doctor: doctor,
      phone_doctor: phone_doctor,
      agreement: agreement,
      number_agreement: number_agreement,
      hospital: hospital
    }
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/MethodLength
end
