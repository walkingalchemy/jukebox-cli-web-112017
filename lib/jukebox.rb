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
      exiter
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

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songs.each_with_index do |song, index|
    if input == (index + 1).to_s or song
      puts "Playing #{song}"
      return
    end
    puts "Invalid input, please try again"
  end
end

def exiter
  puts "Goodbye"
end
