class Flyer
  attr_reader :name, :email, :miles_flown
  
  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end
  
  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []
1.upto(5) do |number|
  flyers << Flyer.new("Flyer #{number}", "flyer#{number}@example.com", number * 1000)
end

puts flyers

# Iterate through all flyers and print their name and miles flown
puts
flyers.each do |flyer|
  puts "#{flyer.name} - #{flyer.miles_flown} miles"
end

# In a separate block tally up the total miles flown by all flyers and print out the total
puts
total = 0
flyers.each do |flyer|
  total += flyer.miles_flown
end
puts "Total miles flown: #{total}"

puts
promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5}
promotions.each { |airline, promo| puts "Earn #{promo}x miles by flying #{airline}!"}

#or, same as above
# promotions.each do |airline, promo|
#   puts "Earn #{promo}x miles by flying #{airline}!"
# end

# Iterators within Iterators - combine the two iterators to print out the miles each flyer would
# earn by switching to each airline
flyers.each do |flyer|
  promotions.each do |airline, promo|
    puts "#{flyer.name} could earn #{flyer.miles_flown * promo} miles by flying #{airline}"
  end
end

puts
desserts = { "chocolate" => 1.00, "vanilla" => 0.75, "cinnamon" => 1.25}
desserts.each do |flavor, price|
  puts "$#{price * 2} for a cup of #{flavor}."
end
