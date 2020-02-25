class Doctor
    attr_accessor :name, :date, :patient
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def appointments
        Appointment.all.select do |appointmentInstance|
            appointmentInstance.doctor == self
        end
    end
    def new_appointment(patient, date)
        newAppointment = Appointment.new(date, patient, self)
    end
    def patients
        appointments.map do |a|
            a.patient
        end
    end
end