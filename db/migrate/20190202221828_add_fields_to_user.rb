# frozen_string_literal: true

class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    change_table :users, bulk: true do |t|
      t.string :last_name
      t.string :kind
      t.string :cpf
      t.string :phone
      t.string :specialty
    end
  end
end
