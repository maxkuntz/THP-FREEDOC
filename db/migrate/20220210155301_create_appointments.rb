class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date

      t.belongs_to :doctor, index: true #cette ligne rajoute la référence à la table doctor
      t.belongs_to :patient, index: true #cette ligne rajoute la référence à la table patient
      t.belongs_to :city, index: true #cette ligne rajoute la référence à la table city
      t.timestamps
    end
  end
end
