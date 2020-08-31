class Doctor

    attr_accessor :name, :patients, :appointments

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def patients
        my_patients = appointments.collect do |appt|
            appt.patient
        end
        my_patients
    end

end