# frozen_string_literal: true

class CreateClients < ActiveRecord::Migration[5.2]
  # rubocop:disable Metrics/AbcSize
  # rubocop:disable Metrics/MethodLength
  # rubocop:disable Metrics/BlockLength
  def change
    create_table(:clients) do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :cpf
      t.string :phone
      t.date :birth_date
      t.string :sex
      t.string :profession
      t.string :marital_status
      t.boolean :children
      t.integer :number_children
      t.string :zip_code
      t.string :street
      t.string :number
      t.string :neighbohood
      t.string :complement
      t.string :city
      t.string :state
      t.string :name_emergency
      t.string :phone_emergency
      t.string :doctor
      t.string :phone_doctor
      t.string :agreement
      t.string :number_agreement
      t.string :hospital

      t.timestamps
    end
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/MethodLength
  # rubocop:enable Metrics/BlockLength
end
