# Lesson 5 - Yielding
# Bonus Round questions

# You're writing a method that calculates the progress of some activity as it 
# progresses from 0 to 100% complete.  You don't want the method to be bothered
# what happens as a result of the progress. Instead, you want to allow folks to
# attach a block that does whatever they want.

# Someone wants to print out the progress to the console, they'll call your 
# progress method with a block like:
# progress { |percent| puts percent }
# Define the progress method and use the built-in step method on the Numeric
# class to iterate from 0 to 100 in increments of 10, calling the block on 
# each iteration and passing it the current percent complete. 

def progress
  0.step(100, 10) do |number|
    yield number
  end
end

progress { |percent| puts percent }

# When the following block is called it prints out nil values for name and age.
# Blocks are forgiving when it comes to the number of parameters it's passed.
# Too few and the excess are set to nil.  If passed too many parameters, the
# excess will be ignored.  
 
puts
def greet
  yield
end

greet { |name, age| puts "Hello, #{name}. You don't look #{age}!" }