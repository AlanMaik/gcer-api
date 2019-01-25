# frozen_string_literal: true

require 'rails_helper'

describe 'POST /auth', type: :request do
  subject { response }

  before do
    post '/auth', params: params.to_json
  end

  context 'with empty params' do
    let(:params) { {} }

    it { is_expected.to have_http_status(:unprocessable_entity) }
  end

  context 'with correct params' do
    let(:params) do
      {
        email: 'bar@foo.com',
        password: 'foobar123'
      }
    end

    let(:user) { User.find_by!(email: 'bar@foo.com') }

    it { is_expected.to have_http_status(:ok) }
  end
end
