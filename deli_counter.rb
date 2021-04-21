# Write your code here.
#customer quene array
katz_deli = []
#return quene status
def line(katz_deli)
  if katz_deli == []
    puts"The line is currently empty."
  else
    current_line = "The line is currently:"
    katz_deli.each.with_index(1) do |guy, i|
      current_line << " #{i}. #{guy}"
    end
    puts current_line
  end
end
#new customer number gen
def take_a_number(katz_deli, new_customer)
  katz_deli << new_customer
  puts "Welcome, #{new_customer}. You are number #{katz_deli.count} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty? == false
    puts "Currently serving #{katz_deli.first}."
    first = katz_deli.first
    first.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
