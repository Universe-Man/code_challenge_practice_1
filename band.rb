class Band

  # DELIVERABLES
  #A band should have a method Band#plays_in_venue
  #that takes a venue and date as a string as arguements
  #and associates the band to that venue
  #A band should have a method Band#concerts
  #should return an array of all that band's concerts
  #A band should have a method Band.all_introductions
  #that puts out a message of
  #"Hello, we are {insert band name here}.
  #Our genre is {insert genre}" for each band
  #A band should have a mathod Band#venues
  #that returns an array of all the venues the band has concerts at.

  attr_reader :name, :genre

 ALL = []

 def initialize(name, genre)
   @name = name
   @genre = genre
   ALL << self
 end

 def self.all
   ALL
 end

 def plays_in_venue(venue, date)
   Concert.new(date, venue, self)
 end

 def concerts
   Concert.all.select do |show|
     show.band == self
   end
 end

 def venues
   concerts.map do |show|
     if show.band == self
       show.venue
     end
   end
 end

 def self.all_introductions
   Band.all.each do |band|
     puts "Hello, we are #{band.name}. Our genre is #{band.genre}."
   end
 end

end
























#
#
#  def plays_in_venue(venue, date)
#    venue.bands << self
#  end
#
#  def concerts
#    binding.pry
#    Concert.all.select do |show|
#      binding.pry
#      show.band == self
#    end
#  end
#
#  def self.all_introductions
#    ALL.each do |band|
#      puts "Hello, we are #{band.name}. Our genre is #{band.genre}" # . or ?
#
#      # band.map do |genre, name|
#      # ALL.map do |name, genre|
#      #   puts "Hello, we are #{name}. Our genre is #{genre}" # . or ?
#    end
#  end
#
#  def venues
#    concerts.map do |show|
#      show.venue.location
#    end
#  end
#  #   Venue.all.each do |venue|
#  #     binding.pry
#  #     venue.bands.select do |name, genre|
#  #       binding.pry
#  #       name == self
#  #     end
#  #   end
#  # end
#
# end
