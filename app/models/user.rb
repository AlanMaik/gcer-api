# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  include DeviseTokenAuth::Concerns::User

  def as_json(_options = {})
    {
      id: id,
      email: email,
      kind: kind,
      specialties_id: specialties_id,
      phone: phone,
      cpf: cpf,
      name: name,
      last_name: last_name
    }
  end
end
