class Appointment < ActiveRecord::Base
  attr_accessible :appointment_date, :doctor_id, :patient_id
  belongs_to :doctor
  belongs_to :patient
end
