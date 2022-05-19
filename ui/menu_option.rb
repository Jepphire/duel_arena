class MenuOption

    attr_accessor :display_text, :key, :command

    def initialize(key, display_text, command = nil)
        @display_text = display_text
        @key = key
        @command = command
    end
end