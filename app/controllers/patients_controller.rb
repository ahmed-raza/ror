class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(params[:patient])

    if @patient.save
      redirect_to patients_path, :notice => "Patient added!"
    else
      render "new"
    end
  end
end
