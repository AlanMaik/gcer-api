# frozen_string_literal: true

require 'rails_helper'

describe 'GET /specialties', type: :request do
  subject { response.body }

  let(:id) { Specialty.last.id }
  let(:expected_array) do
    [
      {
        id: id,
        specialty: 'foobar',
        specialty_description: 'baz'
      }
    ].to_json
  end

  before do
    Specialty.create!(
      specialty: 'foobar',
      specialty_description: 'baz'
    )
    get '/specialties'
  end

  it { expect(response).to have_http_status(:ok) }
  it { expect(Specialty.count).to eq(1) }
  it { is_expected.to eq(expected_array) }
end
