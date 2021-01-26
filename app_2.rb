require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


puts " ----------------------------------------------------------------- "
puts " |                     Bienvenue jeune padawan                     |"
puts " |                            ton but ?                            |"
puts " |                            SURVIVRE                             |"
puts " ----------------------------------------------------------------- "
puts ""
puts "                c'est quoi ton nom de super-heros ?                  "
print ">"
puts name = gets.chomp
puts""
player1 = HumanPlayer.new("#{name}")
puts "                 OK #{name}, bonne chance à toi champion  "
puts " Sache que tu dispose de #{player1.life_points} points de vie et d'une arme de niveau #{player1.weapon_level}                                                       "
puts ""
ennemi1 = Player.new("Jacques_chirac")
ennemi2 = Player.new("Poutine")

all_ennemi = [ennemi1, ennemi2]
puts "---------------------!!!! ALERTE ENNEMIS !!!!-----------------------"
puts ""
all_ennemi.each do |a|
    print "#{a.name}, "
end
print "sont vénères et ils veulent te faire la POO "
puts ""
puts ""
puts"<<<<<<<<<<<<<<<<< APPUYER SUR ENTER POUR CONTINUER >>>>>>>>>>>>>>>>>>"
enter = gets.chomp
puts "--------------------------- FIGHT !!! ---------------------------"
puts ""
      while (ennemi1.life_points > 0 || ennemi2.life_points > 0) && player1.life_points > 0

puts ""
puts""
puts "#{player1.show_state}  "
puts "_________________________________________________________________"                                             
puts""
puts "Quelle action veux-tu effectuer ?"

puts "a - chercher une meilleure arme"
puts "s - chercher à se soigner "
puts ""
puts "attaquer un joueur en vue :"
puts "0 - #{ennemi1.show_state}"
puts "1 - #{ennemi2.show_state}"
print ">"
answer = gets.chomp
puts ""
puts""

puts "__________________________________________________________________"
puts ""
puts""

    if answer == "a"
     puts "   qu'est ce qu'on a par ici .... ?"
     puts""
     puts player1.search_weapon
    end

    if answer == "s"
     puts " i will survive ..."
     puts " "
     puts player1.search_health_pack
    end

    if answer == "0"
     puts "   BAM  Dans Ta Face"
     puts ""
     puts player1.attacks(ennemi1) 
    end

    if answer == "1"
     puts "   BAM  Dans Ta Face"
     puts ""
     puts player1.attacks(ennemi2)
    end

puts "<<<<<<<<<<<<<<< APPUYER SUR ENTER POUR CONTINUER >>>>>>>>>>>>>>>>>"
continue = gets.chomp
puts ""
puts "----------------------- La riposte aie ---------------------------"
puts""


    if ennemi1.life_points > 0
      puts                        ennemi1.attacks(player1)
    end

    if ennemi2.life_points > 0
      puts                        ennemi2.attacks(player1)
    end
  
    if (ennemi1.life_points <= 0 && ennemi2.life_points <= 0)
      puts""
      puts ""
      puts "     --------------------------------------------"
      puts "     |                                           |"
      puts "     |                                           |"
      puts "     |                                           |"
      puts "     |     BRAVO CHAMPION TU LES A DEFONCES      |"
      puts "     |                                           |"
      puts "     |                                           |"
      puts "     |                                           |"
      puts "     ---------------------------------------------"
      puts ""
      puts""
      break
    end

    if player1.life_points <= 0 
      puts""
      puts ""
      puts "     --------------------------------------------"
      puts "     |                                           |"
      puts "     |                                           |"
      puts "     |                                           |"
      puts "     |           GAME OVER, YOU LOOSE ...        |"
      puts "     |                                           |"
      puts "     |                                           |"
      puts "     |                                           |"
      puts "     ---------------------------------------------"
      puts ""
      puts""
        break
    end



puts""
puts "<<<<<<<<<<<<< APPUYER SUR ENTER POUR CONTINUER >>>>>>>>>>>>>>>"
continue = gets.chomp


end


