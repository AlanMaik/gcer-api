# frozen_string_literal: true

class Service < ApplicationRecord
  def as_json(_options = {})
    {
      id: id,
      service: service,
      type_service: type_service,
      price: price,
      duraction: duraction
    }
  end
end
