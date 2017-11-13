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

def run(songs)
  help
  command = ""
  while command
    puts "Please enter a command:"
    command = gets.chomp
    case command.downcase
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end

def help
  puts "I accept the following commands:\n
  - help : displays this help message\n
  - list : displays a list of songs you can play\n
  - play : lets you choose a song to play\n
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, index| puts "#{index + 1}. #{song}" }
end

# def play(songs)
#   puts "Please enter a song name or number:"
#   input = gets.chomp
#   songs.each_with_index do |song, index|
#     if input == (index + 1).to_s or song
#       puts "Playing #{song}"
#       break
#     end
#     puts "Invalid input, please try again"
#   end
# end

def play(songs)
  puts "Please enter a song name or number:"
  song_to_play = gets.chomp
  if (1..9).to_a.include?(song_to_play.to_i)
    puts "Playing #{songs[song_to_play.to_i - 1]}"
  elsif songs.include?(song_to_play)
    puts "Playing #{song_to_play}"
  else
    puts "Invalid input, please try again"
  end
end



def exit_jukebox
  puts "Goodbye"
end
