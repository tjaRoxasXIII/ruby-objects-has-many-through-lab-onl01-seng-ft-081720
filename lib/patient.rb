class Patient

    attr_accessor :name, :doctor, :appointments

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end

    def doctors
        my_doctors = appointments.collect do |appt|
            appt.doctor
        end
        my_doctors
    end

end