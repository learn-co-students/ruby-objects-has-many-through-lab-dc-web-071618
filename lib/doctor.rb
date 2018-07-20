require 'pry'
require_relative './appointment.rb'
require_relative './patient.rb'

class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    self.appointments.map do |appointment|
      appointment.patient
    end
  end
end

# doctor_who = Doctor.new("The Doctor")
# hevydevy = Patient.new("Devin Townsend")
# appt = doctor_who.new_appointment(hevydevy, "Friday, January 32nd")
#
# binding.pry
# 'hi'
