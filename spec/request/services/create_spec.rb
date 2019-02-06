# frozen_string_literal: true

require 'rails_helper'

describe 'POST /services', type: :request do
  subject { response.body }

  let(:params) do
    {
      service: 'foobar',
      type_service: 'baz',
      price: 10.00,
      duraction: 60
    }.to_json
  end

  before do
    post '/services', params: params
  end

  it { expect(response).to have_http_status(:created) }
  it { expect(Service.count).to eq(1) }
end
