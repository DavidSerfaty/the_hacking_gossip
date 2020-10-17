# require 'controller'

class Router

  def initialize
    @controller = Controller.new
  end

  def perform

    puts "Bienvenu dans the Gossip Project"

    while true
      puts
      puts "Que veux-tu faire ?"
      puts "1) créer un gossip"
      puts "2) afficher tous les potins"
      puts "3) supprimer un potin"
      puts "4) quitter l'app"
      puts
      params = gets.chomp.to_i

      case params
      when 1
        puts "Tu as choisi de créer un Gossip"
        @controller.create_gossip
      when 2
        puts "Tu as choisi d'afficher tous les Gossips"
        @controller.index_gossip
      when 3
        puts "Tu as choisi de supprimer un potin"
        @controller.destroy_gossip
      when 4
        puts "A bientôt"
        break
      else
        puts "Ce choix n'existe pas, merci de ressayer"
      end
    end
  end
end
