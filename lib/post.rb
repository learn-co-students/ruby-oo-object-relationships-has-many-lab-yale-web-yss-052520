class Post 
    attr_accessor :author, :title
    @@all = []

    def initialize(title)
        @title = title 
        self.class.all << self
    end 

    def self.all
        @@all
    end

    #Note that self.author returns an instance of the Author class. 
    # Need to chain another method .name onto it. 
    def author_name 
        self.author.nil? ? nil : self.author.name
    end 
end 