
require 'pry'

class Patient
  attr_accessor :name
@@all=[]
    def initialize(name)
      @name=name
      # @patient=patient
      # @appointment=appointment
      # @doctor=doctor
      # @date=date
      @@all << self
    end

    def self.all
      @@all
    end

    ##Patient
      #new - initializes with a name (FAILED - 20)
      #new_appointment - given a doctor and date, creates a new appointment belonging to that patient (FAILED - 21)
      #doctors - has many doctors through appointments (FAILED - 22)

        def new_appointment(doctor,date)
          x = Appointment.new(self, doctor, date)
        end
        def appointments
          Appointment.all.select {|a| a.patient == self}
        end

        def doctors
          self.appointments.map {|a| a.doctor}.uniq
        end


end#end of patient class

##Patient
  #new - initializes with a name (FAILED - 20)
  #new_appointment - given a doctor and date, creates a new appointment belonging to that patient (FAILED - 21)
  #doctors - has many doctors through appointments (FAILED - 22)
