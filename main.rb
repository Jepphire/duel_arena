require_relative 'ui/ui'
require_relative 'models/enemy'
require_relative 'models/player'

ui = UI.new
player = Player.new

duel = true

# Assign enemy
if duel && !player.current_enemy
    enemy = Enemy.new({:lvl => player.level})
    player.current_enemy = enemy
end

# Main combat input loop
while duel

    input = ui.get_cmd

    case input
        when "attack", "a"
            retval = player.attack()
    end
end