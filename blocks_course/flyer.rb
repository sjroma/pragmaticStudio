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

# Id frequent flyer customers, those who have flown at least 3,000 miles, and print them out
freqfly = flyers.select { |m| m.miles_flown >= 3000 }
puts freqfly

# Id those flyers that need more incentive-those who flew less than 3,000 miles and print them out
puts
infreqfly = flyers.reject { |m| m.miles_flown >= 3000 }
puts infreqfly

# Have any flyers achieved platinum status? Print the answer
puts
puts flyers.any? { |flyer| flyer.status == :platinum }

# You want to call all of your bronze status flyers to encourage them move up to 
# silver status.  Who is the first flyer on the call list?
first_bronze_flyer = flyers.detect { |flyer| flyer.status == :bronze }
puts first_bronze_flyer