# Add your code here

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  track = gets.strip
  if track.to_i >= 1 && track.to_i <= songs.length
    puts "Playing #{songs[track.to_i-1]}"
  elsif songs.include?(track)
    puts "Playing #{track}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.length.times { |index| puts ("#{index+1}. " + songs[index]) }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.strip
  if command == "exit"
    exit_jukebox
  elsif command == "list"
    list(songs)
  elsif command == "help"
    help
  elsif command == "play"
    play(songs)
  end
  unless command == "exit"
    run(songs)
  end
end