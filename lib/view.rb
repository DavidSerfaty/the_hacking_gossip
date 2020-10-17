class View

  def create_gossip
    puts "Quel author voulez vous ?"
    @author = gets.chomp
    puts "Confies toi !"
    @content = gets.chomp
    return params = {author: @author, content: @content}
  end

  def index_gossip(all_gossips)
    all_gossips.each do |gossip|
      puts "#{gossip.author}, #{gossip.content}"
    end
  end

  def destroy_gossip(all_gossips)
    puts "Quel Gossip souhaites tu supprimer ?"
    all_gossips.each_with_index do |gossip, index|
      puts "#{index+1} - #{gossip.author}, #{gossip.content}"
    end
    print ">"
    params = gets.chomp.to_i
    all_gossips.delete_at(params-1)
    return all_gossips
  end

end
