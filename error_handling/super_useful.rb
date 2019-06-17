require "byebug"
# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError
    nil
  end
end

# PHASE 3
class CoffeeError < StandardError
end

class FriendError < StandardError
end

class NameError < StandardError
end

class PastimeError < StandardError
end

FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  begin
    if FRUITS.include? maybe_fruit
      puts "OMG, thanks so much for the #{maybe_fruit}!"
    elsif maybe_fruit == 'coffee'
      raise CoffeeError
    else 
      raise StandardError
    end
  rescue CoffeeError
    puts 'thanks for the coffee'
    feed_me_a_fruit
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    # debugger
    if yrs_known < 5
      raise FriendError, "We need to be friends for 5 years"
    end
    if name.length == 0
      raise NameError, "Enter Name"
    end
    if fav_pastime.length == 0
      raise PastimeError, "Enter Pastime"
    end
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
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


