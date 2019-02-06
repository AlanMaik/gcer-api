# frozen_string_literal: true

require 'rails_helper'

describe 'POST /clients', type: :request do
  subject { response.body }

  let(:params) do
    {
      name: 'foobar',
      last_name: 'baz',
      email: 'foobar@bar.com',
      cpf: '12345678901',
      phone: '123456789',
      birth_date: '1990-01-01',
      sex: 'MA',
      profession: 'podologa',
      marital_status: 'casada',
      children: false,
      number_children: 0,
      zip_code: '123456789',
      street: 'foobar street',
      number: '10 A',
      neighbohood: 'baz',
      complement: 'bar',
      city: 'foobar city',
      state: 'barfoo',
      name_emergency: 'foo',
      phone_emergency: '99999999',
      doctor: 'bazbar',
      phone_doctor: '99999999',
      agreement: 'fooo',
      number_agreement: '123456',
      hospital: 'foobar baz'
    }.to_json
  end

  before do
    post '/clients', params: params
  end

  it { expect(response).to have_http_status(:created) }
  it { expect(Client.count).to eq(1) }
end
