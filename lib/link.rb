class Link
attr_reader :links

  def initialize
    @links = ["www.bodyshop.com", "www.tfl.com", "www.google.com"]
  end

  def all
    @links
  end
end
