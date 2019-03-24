# frozen_string_literal: true

class DropColumnSpecialtyOnUsers < ActiveRecord::Migration[5.2]
  def up
    change_table :users do |t|
      t.remove :specialty
    end
  end
end
