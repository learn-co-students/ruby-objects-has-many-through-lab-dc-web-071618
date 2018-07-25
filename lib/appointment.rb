require 'pry'

class Appointment
  @@all=[]
  attr_accessor :patient, :doctor, :date

    def initialize (patient, doctor, date)

      @patient=patient
      @doctor=doctor
      @date=date
      @@all << self
    end

    def self.all
      @@all
    end
  end # end of appointment class


##Appointment
  #.all -knows about all appointments that have been created (FAILED - 16)
  #new - initializes with a patient, doctor, and date (FAILED - 17)
  #patient - belongs to a patient (FAILED - 18)
  #doctor - belongs to a doctor (FAILED - 19)
