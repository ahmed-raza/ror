class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(params[:doctor])

    if @doctor.save
      redirect_to doctors_path, :notice => "Doctor added!"
    else
      render "new"
    end
  end
end
