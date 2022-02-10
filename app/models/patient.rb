class Patient < ApplicationRecord
  has_many :appointments #a plusieurs appointments
  has_many :doctors, through: :appointments #a plusieurs doctors à travers appointments
  belongs_to :city #Appartient à une city
end
