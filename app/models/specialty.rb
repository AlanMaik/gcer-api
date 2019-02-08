# frozen_string_literal: true

class Specialty < ApplicationRecord
  def as_json(_options = {})
    {
      id: id,
      specialty: specialty,
      specialty_description: specialty_description
    }
  end
end
