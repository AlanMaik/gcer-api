# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    described_class.new(
      email: 'foo@bar.com',
      password: 'foobar123',
      name: 'FooBar',
      last_name: 'Foo',
      specialties_id: specialty.id,
      kind: 'Gerente'
    )
  end

  let(:specialty) do
    Specialty.create!(
      specialty: 'foobar',
      specialty_description: 'foobar baz bar'
    )
  end

  it { is_expected.to validate_presence_of :email }

  describe '#as_json' do
    let(:json) do
      {
        id: user.id,
        name: 'FooBar',
        last_name: 'Foo',
        email: 'foo@bar.com',
        kind: 'Gerente',
        specialty: specialty.id,
        phone: nil,
        cpf: nil
      }
    end

    it { expect(user.as_json).to eq(json) }
  end
end
