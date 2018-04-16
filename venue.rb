class Venue

  #A venue should have a method Venue#concerts
  #that lists all the concerts that have ever been performed in that venue
  #A venue should have a method Venue#bands
  #that lists all the bands that have ever played in that venue

  attr_reader :location

 ALL = []

 def initialize(location)
   @location = location
   ALL << self
 end

 def self.all
   ALL
 end

 def concerts
   Concert.all.select do |show|
    show.venue == self
   end
 end

 def bands
   concerts.map do |show|
     if show.venue == self
       show.band.name
     end
   end
 end

end





























#  def concerts
#    Concert.all.select do |show|
#      show.venue == self
#    end
#  end
#
#  def bands
#    concerts.map do |show|
#      show.band.name
#    end
#  end
#    # the_bands = []
#    # Band.all.each do |band|
#    #   if band.venues.include?(self)
#    #     the_bands << band
#    #   end
#    # end
#    # the_bands
#
# end
