def create_phone_number(numbers)
  "(#{numbers[0,3].join("")}) #{numbers[3..5].join("")}-#{numbers[6,9].join("")}"
end

puts create_phone_number([1,2,3,4,5,6,7,8,9,0])

#Write a function that accepts an array of 10 integers (between 0 and 9),
# that returns a string of those numbers in the form of a phone number.