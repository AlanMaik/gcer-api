# frozen_string_literal: true

require 'rails_helper'

describe 'POST /users', type: :request do
  subject { response.body }

  let(:specialty) do
    Specialty.create!(
      specialty: 'foobar',
      specialty_description: 'foobar baz bar'
    )
  end

  let(:params) do
    {
      name: 'foobar',
      email: 'foobar@bar.com',
      last_name: 'baz',
      kind: 'gerente',
      cpf: '12345678901',
      phone: '123456789',
      specialty_id: specialty.id,
      password: '12345678'
    }.to_json
  end

  before do
    post '/users', params: params
  end

  it { expect(response).to have_http_status(:created) }
  it { expect(User.count).to eq(2) }
end
