require "tzinfo"


for i in "Hello, Welcome to Time Zone Converter!".chars.to_a
  print i
  sleep 0.05
end

sleep(2)

puts "\n"

for i in "What is your name?".chars.to_a
    print i
    sleep 0.05
end

puts "\n"

name = gets.chomp

sleep(3)


for i in "Nice to meet you, #{name}!".chars.to_a
    print i
    sleep 0.05
end

sleep(3)
