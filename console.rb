require 'pry'
require_relative './band.rb'
require_relative './concert.rb'
require_relative './venue.rb'

garbage = Band.new("Garbage", "Rock")
beatles = Band.new("The Beatles", "Rock")
flogging_molly = Band.new("Flogging Molly", "Pop")
rem = Band.new("REM", "Pop")
run_dmc = Band.new("Run DMC", "Rap")

the_greek = Venue.new("The Greek")
hollywood_bowl = Venue.new("Hollywood Bowl")
staples_center = Venue.new("Staples Center")
msg = Venue.new("Madison Square Garden")
verizon_center = Venue.new("Verizon Center")
pop = Venue.new("Pop Arena")

con1 = Concert.new("4/12/17", flogging_molly, staples_center)
con2 = Concert.new("5/19/17", garbage, pop)
con3 = Concert.new("11/4/98", run_dmc, verizon_center)
con4 = Concert.new("12/25/65", beatles, msg)
con5 = Concert.new("6/7/88", rem, pop)
con6 = Concert.new("8/19/78", beatles, hollywood_bowl)
con7 = Concert.new("10/10/71", garbage, the_greek)
con8 = Concert.new("11/6/97", flogging_molly, pop)


binding.pry

hi = 'hello'
