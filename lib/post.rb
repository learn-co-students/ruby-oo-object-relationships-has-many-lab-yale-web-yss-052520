class Post

    attr_accessor :title, :author_name
    attr_reader :author
    @@all = []


    def initialize(title)
        @title = title
        save
    end
    
    def save
        @@all << self
    end
    def self.all
        @@all
    end

    def author=(author)
        @author = author
        @author_name = author.name 
    end


end