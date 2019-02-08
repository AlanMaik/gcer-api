# frozen_string_literal: true

class CreateSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :specialties do |t|
      t.string :specialty
      t.string :specialty_description

      t.timestamps
    end
  end
end
