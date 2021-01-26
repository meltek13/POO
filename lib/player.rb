require 'pry'

class Player
    attr_accessor :name, :life_points

    def initialize(name)
        @life_points = 10
        @name = name 
    end
    
    def show_state
       "#{@name} a #{@life_points} points de vie"
    end

    def gets_damage(damage)
        @life_points = @life_points - damage
        if @life_points <= 0
            puts "le joueur #{@name} a été tué"
        end    
    end

    def attacks(player)
        puts "le joueur #{@name} attaque le joueur #{player.name}"
        damage_received = compute_damage
        puts "il lui inflige #{damage_received} points de dommages"
        player.gets_damage(damage_received)
    end


    def compute_damage
        return rand(1..6)
    end
end

class HumanPlayer < Player

    attr_accessor :weapon_level

    def initialize(name)
        @weapon_level = 1
        @life_points = 100
        @name = name   
    end

    def show_state
        "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
    end

    def compute_damage     
        rand(1..6) * @weapon_level
    end

    def search_weapon
        level = rand(1..6)
        puts "tu as trouvé une arme de niveau #{level}"
        if level > @weapon_level
            @weapon_level = level
            puts "allelujah j'ai une nouvelle arme level #{level} "
        else
            puts "M@*#$.. pff cette arme est faible"
        end
    end

    def search_health_pack
        health = rand(1..6)
        if health == 1
            "walou mon pote, il te reste #{@life_points} points de vie"
        elsif health >= 2 && health <= 5
            @life_points = life_points + 50
               if @life_points > 100
                
                puts "bravo tu as trouvé un pack de 50 VIE ! tu es full life tu as #{@life_points = 100} points de vie"
                else
                puts "bravo tu as trouvé un pack de 50 VIE ! tu as desormais #{@life_points} points de vie"
               end
        else
            @life_points = life_points + 80
              if @life_points > 100
               puts "jackpot mon pote tu as trouvé un pack de 80 VIE ! tu es full life tu as #{@life_points = 100} points de vie"
              else
               puts "jackpot mon pote tu as trouvé un pack de 80 VIE ! tu as desormais #{@life_points} points de vie"    
              end
        end
    end
    
end


