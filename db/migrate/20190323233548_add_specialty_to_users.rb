# frozen_string_literal: true

class AddSpecialtyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :specialties, foreign_key: true, index: true
  end
end
