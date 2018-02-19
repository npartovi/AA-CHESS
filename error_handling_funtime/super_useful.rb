# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue StandardError => e
    puts "Can't convert #{str} to an Integer"
    puts "Error was: #{e.message}"
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    raise StandardError
  end
end

def feed_me_a_fruit

  begin
    puts "Hello, I am a friendly monster. :)"
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)

  rescue StandardError =>
    e.message
    retry if maybe_fruit == "coffee"
  end

end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    raise NameError if name.empty?
    @yrs_known = yrs_known
    raise YearsKnownError if yrs_known < 5
    @fav_pastime = fav_pastime
    raise PastTimeError if fav_pastime.empty?
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
  end
end

class NameError < StandardError
  def message
    puts "Please enter in a name"
  end
end

class PastTimeError < StandardError
  def message
    puts "Come on Man, Enter in your favorite pastime silly!"
  end
end

class YearsKnownError < StandardError
  def message
    puts "You have not Known each other for that long"
  end
end
