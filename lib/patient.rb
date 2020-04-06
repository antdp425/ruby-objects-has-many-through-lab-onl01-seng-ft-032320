class Patient
   attr_accessor :appointments
   attr_reader :name
   @@all = []
   def initialize(name)
      @name = name
      @appointments = []
      @@all << self
   end
   def self.all
      @@all
   end
   def new_appointment(doctor,date)
      appt = Appointment.new(date,self,doctor)
      # @appointments << appt
      appt
   end
   # def appointments
   #    @appointments
   # end
   def doctors
      @appointments.collect{|a| a.doctor}
   end
end