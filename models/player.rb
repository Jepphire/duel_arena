class Player
    
    attr_accessor :level
    attr_accessor :health
    attr_accessor :str
    attr_accessor :int
    attr_accessor :current_enemy

    def initialize
        @level = 1
        @health = 10
        @str = 3
        @int = 3
        @current_enemy = nil
    end

    def attack(args)
        player = self
        enemy = args[:enemy]
        hit_chance = rand(0...100)

        if (hit_chance > 50)
            att_val = rand(0..player.str)
        end
    end
end