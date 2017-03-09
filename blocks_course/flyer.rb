class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status
  
  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end
  
  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

# Divide the flyes in two camps: platinum and the others in coach.  Print out both groups
platinum, others = flyers.partition { |flyer| flyer.status == :platinum}
puts "Platinum flyers:"
puts platinum
puts "Coach flyers:"
puts others

# Print friendly names tags that include the flyers name and status (upcased)
puts
name_tag = flyers.map { |flyer| "#{flyer.name} (#{flyer.status.upcase})"}
p name_tag

# Lufthansa is graphing flyer data and has requested an array containing distances flown
# by each flyer, expressed in kilometers rather than miles.  Make and print out the array.
puts
kilometers_flown = flyers.map { |flyer| flyer.miles_flown * 1.6 }
p kilometers_flown

# How many total miles have all the flyers flown?
puts
total_miles = flyers.reduce(0) { |sum, flyer| sum + flyer.miles_flown }
puts "Total miles flown: #{total_miles}"

# How many kilometers have all the flyers flown?
puts
total_kilometers = flyers.reduce(0) { |sum, flyer| sum + (flyer.miles_flown * 1.6) }
puts "Total kilometers flown: #{total_kilometers}"
#or
puts
total_kms = flyers.map { |flyer| flyer.miles_flown * 1.6}.reduce(0, :+)
puts "Total kms flown: #{total_kms}"

# Tally up all the kilometers flown by bronze flyers. Chain together several Enumerable
# methods to compute the total.
puts
puts "Bonus Round"
total_bronze_kms_flown = flyers.select { |f| f.status == :bronze }.map { |f| f.miles_flown * 1.6 }.reduce(:+)
# or
sum_bronze_kms_flown = flyers.select { |f| f.status == :bronze }.reduce(0) { |sum, f| sum + (f.miles_flown * 1.6) }
puts "Total kilometers flown by bronze flyers: #{total_bronze_kms_flown}"
puts "Total kms flown by bronze flyers: #{sum_bronze_kms_flown}"

# The Enumerable module has a convenient method for finding an object that has the maximum
# value returned from the given block: the max_by method.  Use it to find the top flyer.
puts
top_flyer = flyers.max_by { |flyer| flyer.miles_flown}
puts "Top flyer: #{top_flyer}"