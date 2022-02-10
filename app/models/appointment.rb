class Appointment < ApplicationRecord
    belongs_to :doctor #Appartient à un doctor
    belongs_to :patient #Appartient à un patient
    belongs_to :city #Appartient à une city
end
