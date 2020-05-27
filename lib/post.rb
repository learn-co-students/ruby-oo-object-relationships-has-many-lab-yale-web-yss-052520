class Post
    attr_accessor :author, :title
   
    @@all = []
  
    def initialize(title)
      @title = title
      save
    end
   
    def save
      @@all << self
    end

    def author_name
        if self.author
            return self.author.name
        else
            return nil
        end
    end
   
    def self.all
      @@all
    end
    
end