class Post
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def author_name
    return self.author.name unless self.author == nil
    # or 
    # author.name if author
  end
  
  def self.all
    @@all
  end
end