
class Patient

    attr_accessor :name, :date
    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|el| el.patient == self}
    end

    def doctors
        appointments.map{|el| el.doctor}
    end
end

