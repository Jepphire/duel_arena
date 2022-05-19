require_relative MenuOption

class MainMenu

    def initialize(options = [])
        @options = options
        @options.push(MenuOption.new("q", "Exit Menu"))
        show_menu
    end

    def show_menu
        @options.each do |option|
            puts "#{option.key} - #{option.display_text}"
        end
        handle_input
    end
    
    def handle_input
        input = gets.chomp

        selected_option = @options.select {|option| option.key.downcase == input.downcase}

        if selected_option.length > 0
            if selected_option[0].key == 'q'
                return
            end
            selected_option[0].command.execute
        else
            puts "There is no option for the key #{input}"
        end
        show_menu
    end
    
end

puts "Welcome to the Duel Arena!"

menu = MainMenu.new([
    MenuOption.new("1", "New Game", NewGameCmd.new()),
    MenuOption.new("2", "Continue", LoadGameCmd.new()),
    MenuOption.new("3", "Exit")
])

puts menu