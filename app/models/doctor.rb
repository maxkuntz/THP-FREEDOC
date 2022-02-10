class Doctor < ApplicationRecord
  has_many :appointments #a plusieurs appointments
  has_many :patients, through: :appointments #a plusieurs patients à travers appointments
  belongs_to :city #Appartient à une city
end
