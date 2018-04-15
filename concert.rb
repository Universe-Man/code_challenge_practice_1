class Concert

# attr_reader :band, :venue

 ALL = []

 def initialize(date, band, venue)
   @date = date
   @band = band
   @venue = venue
   ALL << self
 end

 def self.all
   ALL
 end

 def band
   @band
 end

 def venue
   @venue
 end

end

#Concert should initialize with a date, band, and venue
#Concert#band and Concert#venue
#should return the band and venue associated to the Concert
