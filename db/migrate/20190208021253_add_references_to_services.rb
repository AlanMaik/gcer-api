# frozen_string_literal: true

class AddReferencesToServices < ActiveRecord::Migration[5.2]
  def change
    add_reference :services, :specialty, foreign_key: true
  end
end
