class Doctor
   attr_reader :name
   @@all = []

   def self.all
      @@all
   end
   def initialize(name)
      @name = name
      @@all << self
   end
   def new_appointment(patient, date)
      appt = Appointment.new(date,patient,self)
   end
   def appointments
      Appointment.all.select {|a| a.doctor == self}
   end
   def patients
      appointments.collect {|a| a.patient}
   end
end