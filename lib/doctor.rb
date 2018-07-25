require 'pry'

class Doctor

  attr_reader :patients, :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    x = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients

    self.appointments.map { |a|

    a.patient}.uniq

  end
end #end of Doctor class


##Doctor
  #name =has a name (FAILED - 11)
  #new =initializes with a name and adds itself to an array of all doctors (FAILED - 12)
  #new_appointment =given a date and a patient, creates a new appointment (FAILED - 13)
  #appointments = has many appointments (FAILED - 14)
  #patients = has many patients, through appointments (FAILED - 15)
