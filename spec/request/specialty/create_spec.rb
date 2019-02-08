# frozen_string_literal: true

require 'rails_helper'

describe 'POST /specialties', type: :request do
  subject { response.body }

  let(:params) do
    {
      specialty: 'foobar',
      specialty_description: 'baz'
    }.to_json
  end

  before do
    post '/specialties', params: params
  end

  it { expect(response).to have_http_status(:created) }
  it { expect(Specialty.count).to eq(1) }
end
