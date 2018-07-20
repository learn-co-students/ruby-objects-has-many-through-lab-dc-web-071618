class Appointment
  attr_accessor :patient, :doctor, :date

  @@all = []
# Appointment #new initializes with a patient, doctor, and date
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end
#Appointment .all knows about all appointments that have been created
  def self.all
    @@all
  end

end
