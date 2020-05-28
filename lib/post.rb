class Post

    @@all = []

    attr_accessor :title
    attr_reader :author

    def initialize(title)
        self.title = title
        self.class.all << self
        @author = nil
    end

    def author=(author)
        @author = author
        author.posts << self
    end

    def author_name
        return nil if !self.author
        self.author.name
    end

    def self.all
        @@all
    end

end