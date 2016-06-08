class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
    @patients = Patient.all
    @doctors = Doctor.all
  end

  def create
    @patient = Patient.find(params[:appointment][:patient_id])
    @doctor = Doctor.find(params[:appointment][:doctor_id])
    @patient.doctors << @doctor
    @patient.appointments.last.update_attributes(appointment_date: params[:appointment][:appointment_date])
  end
end
