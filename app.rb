require "tzinfo"
require "date"


# variable initialization


time = Time.new

current_time = time.strftime("%I:%M")

current_time_zone = Time.now.zone

answered_outer = false

answered_inner = false




# hashes with two hashes nested inside to store user input from user1 and user2


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









for i in "Okay so now, between what two hours are you available on Monday? Please give in decimal format, and stick to full/half hours (1 and 3, 1.5 and 3.5, etc). If you are unavailable, type n/a".chars.to_a
    print i
    sleep 0.03
end
  
sleep(2)
  
puts "\n"

puts "From:"
  
mon_hour1 = gets.chomp
  
sleep(1)

if mon_hour1 == "n/a"
    time_zone_users[:time_zone_user1][:availability][:monday][:time_slot_1].push(mon_hour1)
else
    puts "Until:"
  
    puts "\n"
  
    mon_hour2 = gets.chomp
  
    time_zone_users[:time_zone_user1][:availability][:monday][:time_slot_1].push(mon_hour1.to_f, mon_hour2.to_f)
end

  
puts "\n"

sleep(1)

puts "Tuesday from: "

sleep(1)

puts "\n"

tues_hour1 = gets.chomp

sleep(1)

if tues_hour1 == "n/a"
    time_zone_users[:time_zone_user1][:availability][:tuesday][:time_slot_1].push(tues_hour1)
else
    puts "Until:"
  
    puts "\n"
  
    tues_hour2 = gets.chomp
  
    time_zone_users[:time_zone_user1][:availability][:tuesday][:time_slot_1].push(tues_hour1.to_f, tues_hour2.to_f)
end

puts time_zone_users
  
puts "\n"



puts "\n"

sleep(1)

puts "Wednesday from: "

sleep(1)

puts "\n"

wed_hour1 = gets.chomp

sleep(1)

if wed_hour1 == "n/a"
    time_zone_users[:time_zone_user1][:availability][:wednesday][:time_slot_1].push(wed_hour1)
else
    puts "Until:"
  
    puts "\n"
  
    wed_hour2 = gets.chomp
  
    time_zone_users[:time_zone_user1][:availability][:wednesday][:time_slot_1].push(wed_hour1.to_f, wed_hour2.to_f)
end

puts time_zone_users
  
puts "\n"




# # greeting


# for i in "Hello, Welcome to Time Zone Converter!".chars.to_a
#   print i
#   sleep 0.03
# end

# sleep(2)

# puts "\n"




# for i in "If you've already been here, would you like the short version?".chars.to_a
#   print i
#   sleep 0.03
# end

# sleep(2)

# puts "\n"


# # gives user the option to answer questions quickly with less interactivity

# while answered_outer == false
#     confirm_or_deny = gets.chomp
#     if (confirm_or_deny.upcase == "y".upcase || confirm_or_deny.upcase == "yes".upcase)
#         answered_outer = true
        
#         # faster path

#         puts "name?"
#         puts "\n"
#         fast_user1_name = gets.chomp
#         time_zone_users[:time_zone_user1][:name] = fast_user1_name

#         puts "time and time zone is set to: #{current_time} #{current_time_zone}"
#         time_zone_users[:time_zone_user1][:time_zone] = current_time_zone
#         puts "\n"

#         puts "name2?"
#         puts "\n"
#         fast_user2_name = gets.chomp
#         time_zone_users[:time_zone_user2][:name] = fast_user2_name


#         puts "other time zone?"
#         puts "\n"
#         fast_user_2_time_zone = gets.chomp
#         time_zone_users[:time_zone_user2][:time_zone] = fast_user_2_time_zone


#         puts time_zone_users[:time_zone_user1]
#         puts "\n"
#         puts time_zone_users[:time_zone_user2]





    
#     elsif (confirm_or_deny.upcase == "n".upcase || confirm_or_deny.upcase == "no".upcase)
#         answered_outer = true
        

#         puts "\n"


#         # ask for user1 name

#         for i in "What is your name?".chars.to_a
#             print i
#             sleep 0.03
#         end

#         puts "\n"

#         name = gets.chomp



#         # store user input name value in the first hash



#         time_zone_users[:time_zone_user1][:name] = name

#         for i in "Nice to meet you, #{name}!".chars.to_a
#             print i
#             sleep 0.03
#         end

#         sleep(1)

#         puts "\n"



#         # checks if current time and time zone is accurately detected



#         for i in "The time is currently #{current_time} #{current_time_zone} here, correct?".chars.to_a
#             print i
#             sleep 0.05
#         end


#         puts "\n"




#         # keeps user within the prompts until they give an answer

#         # if they give a y or yes, uppercase or lowercase or any of the letters mixed case, 'answered' is set to true, which exits the while loop, sets the first user's current time zone to whatever the current_time_zone variable is detecting(ex: CST, MT etc), and then answers with a thank you.

#         # else if they give a n or no, uppercase or lowercase or any of the letters mixed case, 'answered' is still set to true, but responds with asking what the current time zone is from the user. when user responds, time zone is collected manually from them and then answers with a thank you

#         # if user does not respond with any version of y/yes, or n/no, the default response asks user to answer with a yes or a no, waits for response, and will repeat until user gives a valid response



#         while answered_inner == false
#             confirm_or_deny_2 = gets.chomp
#             if (confirm_or_deny_2.upcase == "y".upcase || confirm_or_deny_2.upcase == "yes".upcase)
#                 answered_inner = true
#                 time_zone_users[:time_zone_user1][:time_zone] = current_time_zone
#                 for i in "Yes? Thank you".chars.to_a
#                     print i
#                     sleep 0.03
#                 end
            
#             elsif (confirm_or_deny_2.upcase == "n".upcase || confirm_or_deny_2.upcase == "no".upcase)
#                 answered_inner = true
#                 for i in "No? Well, that's a problem....".chars.to_a
#                     print i
#                     sleep 0.05
#                 end
#                 sleep(1)
#                 puts "\n"
#                 for i in "What is your current time zone?".chars.to_a
#                     print i
#                     sleep 0.03
#                 end
#                 puts "\n"
#                 manual_time_zone = gets.chomp
#                 time_zone_users[:time_zone_user1][:time_zone] = manual_time_zone
#                 for i in "#{manual_time_zone}? Okay, thank you".chars.to_a
#                     print i
#                     sleep 0.03
#                 end
#             else
#                 for i in "Yes or No please".chars.to_a
#                     print i
#                     sleep 0.03
#                 end
#                 puts "\n"
#             end

#         end




#         puts "\n"



#         # ask for user2 name

#         for i in "What is your associate's name?".chars.to_a
#             print i
#             sleep 0.03
#         end

#         puts "\n"

#         name_2 = gets.chomp



#         # store user input name value in the first hash



#         time_zone_users[:time_zone_user2][:name] = name_2

#         for i in "#{name_2}? Excellent, thank you!".chars.to_a
#             print i
#             sleep 0.03
#         end

#         sleep(1)

#         puts "\n"





#         # ask for user2 time zone



#         for i in "And what is #{name_2}'s time zone?".chars.to_a
#             print i
#             sleep 0.03
#         end

#         puts "\n"





#         user_2_time_zone = gets.chomp


#         # store user input name value in the first hash



#         time_zone_users[:time_zone_user2][:time_zone] = user_2_time_zone

#         for i in "#{user_2_time_zone}? Okay, thank you!".chars.to_a
#             print i
#             sleep 0.03
#         end

#         sleep(1)

#         puts "\n"



#     else
#         for i in "Yes or No please".chars.to_a
#             print i
#             sleep 0.03
#         end
#         puts "\n"
#     end

# end

# puts "\n"































# Plan out app

# on start of program, greets and prompts for username input - done
# detects current time zone, asks user to verify if accurate - done
# asks what current availability is weekly, including what days of week and hours of the day they ARE available, hours of the day they ARE NOT available, maybe store in a hash? - done
# ask what other time zone you want to schedule with - done
# display availability in the other time zone


