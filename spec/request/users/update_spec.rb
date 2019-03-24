# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'PUT /users/:id', type: :request do
  let(:headers) { {} }
  let(:specialty) do
    Specialty.create!(
      specialty: 'foobar',
      specialty_description: 'foobar baz bar'
    )
  end

  let(:params) do
    {
      name: 'foobar',
      email: 'bar@foo.com',
      specialty: specialty.id,
      phone: '1234567891',
      kind: 'Gerente',
      last_name: 'foo',
      cpf: '12345678911'
    }
  end

  context 'without current_user' do
    let(:headers) { { 'access-token' => nil } }

    before do
      put "/users/#{current_user.id}",
        headers: headers,
        params: params.to_json
    end

    it { expect(response).to have_http_status(:unauthorized) }
  end

  context 'with current_user' do
    before do
      put "/users/#{current_user.id}",
        params: params.to_json
    end

    it { expect(response).to have_http_status(:ok) }
  end

  context 'with incorrect request' do
    let(:params) { { foo: 'bar' } }

    before { put "/users/#{current_user.id}", params: params.to_json }

    it { expect(response).to have_http_status(:bad_request) }
  end
end
