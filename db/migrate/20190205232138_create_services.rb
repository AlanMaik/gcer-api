# frozen_string_literal: true

class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table(:services) do |t|
      t.string :service
      t.string :type_service
      t.float :price
      t.integer :duraction

      t.timestamps
    end
  end
end
