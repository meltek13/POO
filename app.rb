require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("JOSETTE")
player2 = Player.new("RODRIGO")

puts ""
puts "---------------------<<< PRESENTATION PLAYER 1 >>>---------------------"
puts ""
puts "       il est beau, il est fort aceuillez comme il se doit #{player1.name} !!!"
puts ""
puts "---------------------<<< PRESENTATION PLAYER 2 >>>---------------------"
puts ""
puts "       rusé et vif je ne le presente plus voiciiiiiiiiii #{player2.name} !!!"
puts ""
puts "-------------------------<<< POINTS DE VIE >>>-------------------------"
puts ""
puts "      les deux sont en super forme, attention le match risque d'etre épique"
     
              while player1.life_points > 0 && player2.life_points > 0

puts ""
puts "                        #{player1.show_state} "
puts "                        #{player2.show_state}"
puts ""
print "      <<<<<<<<<<<< APPUYER SUR ENTER POUR CONTINUER >>>>>>>>>>>>>>"
answer = gets.chomp
puts ""
puts "-----------------------------<<< FIGHT! >>>----------------------------"
puts ""
puts "                          combattants ATTAQUEZ! "
puts ""
puts                          player1.attacks(player2)

    if player2.life_points <= 0                       
        puts "#{player1.name} a gagné !!"
        break
    end

                  
puts ""
puts                          player2.attacks(player1)
puts""

    if player1.life_points <= 0
     puts "#{player2.name} a gagné !!"
    end
    
    
    

end


