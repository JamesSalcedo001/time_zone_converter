require "tzinfo"
require "date"


for i in "Hello, Welcome to Time Zone Converter!".chars.to_a
  print i
  sleep 0.03
end

sleep(2)

puts "\n"

for i in "What is your name?".chars.to_a
    print i
    sleep 0.03
end

puts "\n"

name = gets.chomp

# sleep(3)


for i in "Nice to meet you, #{name}!".chars.to_a
    print i
    sleep 0.03
end

sleep(1)

puts "\n"



time = Time.new

current_time = time.strftime("%I:%M")

time_zone = Time.now.zone




for i in "The time is currently #{current_time} #{time_zone} here, correct?".chars.to_a
    print i
    sleep 0.05
end

sleep(3)

puts "\n"



answered = false

while answered == false
    confirm_or_deny = gets.chomp
    if (confirm_or_deny.upcase == "y".upcase || confirm_or_deny.upcase == "yes".upcase)
        answered = true
        for i in "Yes? Thank you".chars.to_a
            print i
            sleep 0.03
        end
    
    elsif (confirm_or_deny.upcase == "n".upcase || confirm_or_deny.upcase == "no".upcase)
        answered = true
        for i in "No? Well that's a problem".chars.to_a
            print i
            sleep 0.03
        end
    else
        for i in "Yes or No please".chars.to_a
            print i
            sleep 0.03
        end
        puts "\n"
    end

end






puts "\n"








# Plan out app

# on start of program, greets and prompts for username input
# detects current time zone, asks user to verify if accurate
# asks what current availability is weekly, including what days of week and hours of the day they ARE available, hours of the day they ARE NOT available, maybe store in a hash?
# ask what other time zone you want to schedule with
# display availability in the other time zone


