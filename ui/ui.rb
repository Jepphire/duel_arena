class UI

    # Clear screen
    def clear
        print "\e[H\e[2J"
    end

    # Get player command
    def get_cmd
        puts "Type " + "help" + " for possible commands."
        print "\u2712 " + "Your command? "
        return gets.chomp.downcase
    end

end