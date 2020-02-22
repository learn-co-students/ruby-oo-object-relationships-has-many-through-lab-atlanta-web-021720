require "pry"
class Appointment
    attr_accessor :date, :doctor, :patient
  
    @@all = []
  
    def initialize(date, patient, doctor)
      @date = date
      @doctor = doctor
      @patient = patient
      @@all << self
    end
  
    def self.all
      @@all
    end
  end

  appointment1 = Appointment.new("Jan 2", "Jim","Dr. Smith")
  appointment2 = Appointment.new("feb 4", "bob", "Dr. jones")


 