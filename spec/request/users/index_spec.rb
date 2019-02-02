# frozen_string_literal: true

require 'rails_helper'

describe 'GET /users', type: :request do
  subject { response.body }

  let(:id) { User.find_by(email: 'foobar@bar.com').id }
  let(:expected_array) do
    [
      {
        id: id,
        email: 'foobar@bar.com',
        kind: nil,
        specialty: nil,
        phone: nil,
        cpf: nil,
        name: nil,
        last_name: nil
      },
      {
        id: current_user.id,
        email: current_user.email,
        kind: nil,
        specialty: nil,
        phone: nil,
        cpf: nil,
        name: nil,
        last_name: nil
      }
    ].to_json
  end

  before do
    User.create!(email: 'foobar@bar.com', password: 'foobar123')
    get '/users'
  end

  it { expect(response).to have_http_status(:ok) }
  it { expect(User.count).to eq(2) }
  it { is_expected.to eq(expected_array) }
end
