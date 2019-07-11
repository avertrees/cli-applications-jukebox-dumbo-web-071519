# Add your code here
def help
  puts "I accept the following commands:"
  puts " - help : displays this help message"
  puts " - list : displays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits the program"

end

class String
  def is_integer?
    self.to_i.to_s == self
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  usrRequest = gets.chomp
  puts usrRequest
  if songs.include?(usrRequest)
      puts "Playing #{usrRequest}"
  elsif usrRequest.is_integer? && usrRequest.to_i < songs.length
    #puts usrRequest
    index = usrRequest.to_i-1
    puts "Playing #{songs.at(index)}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  help

  input = ""
  while input != "exit"
  puts "Please enter a command:"
  input = gets.chomp
  #puts input
    case input
    when "play"
      play(songs)
      #break
    when "list"
      list(songs)
      #break
    when "help"
      help
      #break
    else 
      exit_jukebox
      break
    end
    
  end 
  #exit_jukebox
end