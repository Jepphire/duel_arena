module DA

    ENEMY_CATALOG = {
        
    }

    ENEMY_NAME_CATALOG = ["xxPWNZxx", "survivor386", "Zezima", "kill_st4r"]

end
class Enemy

    attr_accessor :selected_enemy
    attr_accessor :name
    attr_accessor :health

    def initialize(args)
        selected_enemy = DA::E_CAT[(args[:lvl] - 1)]
        @name = DA::E_NAME_CAT.sample()
        @health = selected_enemy[1] + rand(0...3)
        puts name
        puts selected_enemy
    end
 
end

Enemy.new({:lvl => 1})