# frozen_string_literal: true

require 'rails_helper'

describe 'POST /auth/sign_in', type: :request do
  subject { response }

  before do
    post '/auth/sign_in', params: params.to_json
  end

  context 'with empty params' do
    let(:params) { {} }

    it { is_expected.to have_http_status(:unauthorized) }
  end

  context 'with inexistent user' do
    let(:params) { { email: 'bar@foo.com' } }

    it { is_expected.to have_http_status(:unauthorized) }
  end

  context 'without password param' do
    let(:params) { { email: current_user.email } }

    it { is_expected.to have_http_status(:unauthorized) }
  end

  context 'with wrong password' do
    let(:params) { { email: current_user.email, password: 'barfoobar' } }

    it { is_expected.to have_http_status(:unauthorized) }
  end

  context 'with correct password' do
    let(:params) { { email: current_user.email, password: 'foobar123' } }

    it { is_expected.to have_http_status(:ok) }
  end
end
