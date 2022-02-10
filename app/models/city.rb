class City < ApplicationRecord
  has_many :doctors #a plusieurs doctors
  has_many :patients #a plusieurs patients
  has_many :appointments #a plusieurs appointments
end
