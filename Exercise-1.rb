lines = []
File.open("Exercise_1.txt") do |review_file|
  lines = review_file.readlines
end

numbers = lines.map(&:to_i)

odd_numbers_sum = numbers.find_all(&:odd?).sum
even_numbers_sum = numbers.find_all(&:even?).sum
numbers_sum = numbers.sum

File.open("Output.txt", "w") do |file|
  file.write("Odd Numbers:#{odd_numbers_sum}\nEven Numbers: #{even_numbers_sum}\nSum: #{numbers_sum}\n ")

end






