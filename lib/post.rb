class Post
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def author_name
    return self.author.name unless self.author == nil
  end
  
  def self.all
    @@all
  end
end