# frozen_string_literal: true

class Service < ApplicationRecord
  belongs_to :specialty

  def as_json(_options = {})
    {
      id: id,
      service: service,
      type_service: type_service,
      price: price,
      duraction: duraction,
      specialty: :specialty.as_json
    }
  end
end
