class Patient

    attr_accessor :name

    @@all= []

    def initialize(name)
        @name= name
        @@all << self
   end

   def self.all
    @@all << self
   end

    def appointments
        Appointment.all.select {|app| app.patient == self}
    end

    def doctors
       appointments.map { |a| a.doctor}
    end

    def new_appointment(date,doctor)
        Appointment.new(date,self,doctor)
    end
end