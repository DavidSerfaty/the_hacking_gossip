class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end

  def index_gossip
    all_gossips = Gossip.all
    params = @view.index_gossip(all_gossips)
  end

  def destroy_gossip
    all_gossips = Gossip.all
    params = @view.destroy_gossip(all_gossips)
    Gossip.destroy(params)
  end

end
