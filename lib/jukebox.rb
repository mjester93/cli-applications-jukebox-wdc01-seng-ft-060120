require 'pry'

# Add your code here
def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end


def list(songs)
    songs.each_with_index do |song, index|
        puts "#{index + 1}. #{song}"
    end
end


def play(songs)
    puts "Please enter a song name or number:"
    user_song_choice = gets.strip

    songs.each_with_index do |song, index|
        if user_song_choice.to_i == (index + 1) || user_song_choice.to_s == song
            return puts "Playing #{song}"
            break
        end
    end

    return puts "Invalid input, please try again"
end


def exit_jukebox
    puts "Goodbye!"
end


def run(songs)
    while true
        puts "Please enter a command:"
        user_input = gets.strip

        case user_input
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
            "Please enter a valid command. Use help to see a list of commands."

        end
    end
end