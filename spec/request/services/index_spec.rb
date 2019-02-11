# frozen_string_literal: true

require 'rails_helper'

describe 'GET /services', type: :request do
  subject { response.body }

  let(:id) { Service.last.id }
  let(:expected_array) do
    [
      {
        id: id,
        service: 'foobar',
        type_service: 'baz',
        price: 10.00,
        duraction: 60,
        specialty_id: specialty.id
      }
    ].to_json
  end

  let(:specialty) do
    Specialty.create!(
      specialty: 'foobar',
      specialty_description: 'foobar baz bar'
    )
  end

  before do
    Service.create!(
      service: 'foobar',
      type_service: 'baz',
      price: 10.00,
      duraction: 60,
      specialty: specialty
    )
    get '/services'
  end

  it { expect(response).to have_http_status(:ok) }
  it { expect(Service.count).to eq(1) }
  it { is_expected.to eq(expected_array) }
end
