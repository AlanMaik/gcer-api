# frozen_string_literal: true

require 'rails_helper'

describe 'GET /users', type: :request do
  subject { response.body }

  let(:expected_array) do
    [
      {
        id: User.last.id,
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
  it { is_expected.to eq(expected_array) }
end
