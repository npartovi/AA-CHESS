require_relative 'super_useful'

puts "'five' == #{convert_to_int('five')}"


feed_me_a_fruit


begin
  puts "enter a name: "
  name = gets.chomp
  puts "how long have you known each other?"
  years = gets.chomp.to_i
  puts "favorite past time?"
  past_time = gets.chomp

  sam = BestFriend.new(name, years, past_time)
rescue NameError => e
  e.message
  retry
rescue YearsKnownError => e
  e.message
  retry
rescue PastTimeError => e
  e.message
  retry
end

sam.talk_about_friendship
sam.do_friendstuff
sam.give_friendship_bracelet
