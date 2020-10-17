class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open("db/gossip.csv", "a+") do |csv|
      csv << [@author, @content]
    end
  end

  def self.destroy(all_gossips)
    CSV.open("db/gossip.csv", "w") do |csv|
      all_gossips.each do |gossip|
        csv << [gossip.author, gossip.content]
      end
    end
  end

  def self.all
    all_gossips = Array.new
    CSV.open("db/gossip.csv", "r").each do |line|
      temp_gossip = Gossip.new(line[0], line[1])
      all_gossips << temp_gossip
    end
    return all_gossips
  end


end


# binding.pry
