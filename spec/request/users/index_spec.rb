# frozen_string_literal: true

require 'rails_helper'

describe 'GET /users', type: :request do
  subject { response.body }

  let(:expected_array) do
    [
      {
        id: User.last.id,
        email: 'foobar@bar.com'
      },
      {
        id: current_user.id,
        email: current_user.email
      }
    ].to_json
  end

  before do
    User.create!(email: 'foobar@bar.com', password: 'foobar123')
    get '/users'
  end

  it { is_expected.to eq(expected_array) }
end
