module MyEnumerable
  def my_map
    new_array = []
    each do |value|
      new_array << yield(value)
    end
    new_array
  end
  
  def my_select
    new_array = []
    each do |value|
      new_array << value if yield(value)
    end
    new_array
  end
end