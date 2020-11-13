# # Add your code here
require 'pry'
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp 
  
  
  if (1..9).to_a.index(input.to_i) != nil
    puts "Playing #{songs[input.to_i - 1]}"
   
    
    elsif songs.include?(input)
    puts "Playing #{input}"
   
  else 
    puts "Invalid input, please try again"
  end
end


def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}" 
   
  end
end

def exit_jukebox
  puts "Goodbye"
end

def prompt
  puts "Please enter a command:"
  gets.chomp 
end

def run(songs)
  help
  
  input = prompt
  
  while input != "exit"
  
  if input == "list"
    list(songs)
     input = prompt
      
    elsif input == "play"
    play(songs)
    input = prompt
    elsif input == "help"
    help()
    input = prompt
    elsif input == "exit"
    input = prompt
    else
    puts "Invalid command"

    input = prompt
  end
end
exit_jukebox
end




