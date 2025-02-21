require "tzinfo"
require "date"


time = Time.new

current_time = time.strftime("%I:%M")

current_time_zone = Time.now.zone

answered = false



time_zone_users = {
        time_zone_user1: {
            name: nil,
            time_zone: nil,
            availability: {
                monday: {
                    time_slot_1: [] || "n/a"
                },
                tuesday: {
                    time_slot_1: [] || "n/a"
                },
                wednesday: {
                    time_slot_1: [] || "n/a"
                },
                thursday: {
                    time_slot_1: [] || "n/a"
                },
                friday: {
                    time_slot_1: [] || "n/a"
                },
                saturday: {
                    time_slot_1: [] || "n/a"
                },
                sunday: {
                    time_slot_1: [] || "n/a"
                }
            }
        },
        time_zone_user2: {
            name: nil,
            time_zone: nil,
            availability: {
                monday: {
                    time_slot_1: [] || "n/a"
                },
                tuesday: {
                    time_slot_1: [] || "n/a"
                },
                wednesday: {
                    time_slot_1: [] || "n/a"
                },
                thursday: {
                    time_slot_1: [] || "n/a"
                },
                friday: {
                    time_slot_1: [] || "n/a"
                },
                saturday: {
                    time_slot_1: [] || "n/a"
                },
                sunday: {
                    time_slot_1: [] || "n/a"
                }
            }
        }
}




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

time_zone_users[:time_zone_user1][:name] = name

for i in "Nice to meet you, #{name}!".chars.to_a
    print i
    sleep 0.03
end

sleep(1)

puts "\n"



for i in "The time is currently #{current_time} #{current_time_zone} here, correct?".chars.to_a
    print i
    sleep 0.05
end


puts "\n"




while answered == false
    confirm_or_deny = gets.chomp
    if (confirm_or_deny.upcase == "y".upcase || confirm_or_deny.upcase == "yes".upcase)
        answered = true
        time_zone_users[:time_zone_user1][:time_zone] = current_time_zone
        for i in "Yes? Thank you".chars.to_a
            print i
            sleep 0.03
        end
    
    elsif (confirm_or_deny.upcase == "n".upcase || confirm_or_deny.upcase == "no".upcase)
        answered = true
        for i in "No? Well, that's a problem....".chars.to_a
            print i
            sleep 0.05
        end
        sleep(1)
        puts "\n"
        for i in "What is your current time zone?".chars.to_a
            print i
            sleep 0.03
        end
        puts "\n"
        manual_time_zone = gets.chomp
        time_zone_users[:time_zone_user1][:time_zone] = manual_time_zone
        for i in "#{manual_time_zone}? Okay, thank you".chars.to_a
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















# answer = 1, 2
# answer = "n/a"
# time_zone_users[:time_zone_user1][:time_zone] = current_time_zone
# time_zone_users[:time_zone_user1][:name] = gets.chomp
# time_zone_users[:time_zone_user1][:availability][:monday][:time_slot_1] = answer







# Plan out app

# on start of program, greets and prompts for username input - done
# detects current time zone, asks user to verify if accurate - done
# asks what current availability is weekly, including what days of week and hours of the day they ARE available, hours of the day they ARE NOT available, maybe store in a hash? - done
# ask what other time zone you want to schedule with
# display availability in the other time zone


