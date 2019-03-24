# frozen_string_literal: true

require 'rails_helper'

describe 'DELETE /users/:id', type: :request do
  subject { response }

  let(:specialty) do
    Specialty.create!(
      specialty: 'foobar',
      specialty_description: 'foobar baz bar'
    )
  end

  let(:user) do
    User.create!(
      email: 'foobar@bar.com',
      password: '12345678',
      specialties_id: specialty.id
    )
  end

  context 'with current_user' do
    before { delete "/users/#{user.id}" }

    it { is_expected.to have_http_status(:ok) }
  end

  context 'without current_user' do
    let(:headers) { { 'access-token' => nil } }

    before { delete "/users/#{user.id}", headers: headers }

    it { is_expected.to have_http_status(:unauthorized) }
  end

  context 'with incorrect request' do
    before { delete '/users', params: { foo: 'bar' } }

    it { is_expected.to have_http_status(:bad_request) }
  end
end
