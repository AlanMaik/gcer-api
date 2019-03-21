# frozen_string_literal: true

require 'rails_helper'

describe 'PUT /users/:id', type: :request do
  subject { response.body }

  let(:headers) { {} }
  let(:specialty) do
    Specialty.create!(
      specialty: 'foobar',
      specialty_description: 'foobar baz bar'
    )
  end

  let(:params) do
    {
      name: 'John',
      email: 'john@email.com',
      last_name: 'Doe',
      kind: 'Gerente',
      cpf: '12345678911',
      phone: '1234567890',
      specialties_id: specialty.id
    }.to_json
  end

  let(:user) do
    User.create!(
      name: 'John',
      email: 'john@email.com',
      last_name: 'Doe',
      kind: 'Gerente',
      cpf: '12345678911',
      phone: '1234567890',
      specialties_id: specialty.id,
      password: 'foobar123'
    )
  end

  context 'with current_user' do
    # let(:headers) { { 'access-token' => nil } }

    before do
      put "/users/#{user.id}", params: params
    end

    it { expect(response).to have_http_status(:ok) }
  end

  context 'with current_user' do
    let(:headers) { { 'access-token' => nil } }

    before do
      put "/users/#{user.id}", headers: headers, params: params
    end

    it { expect(response).to have_http_status(:ok) }
  end
end
