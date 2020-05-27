class Post
    attr_reader :title
    attr_accessor :author 

    @@all = []

    def initialize(title)
        @title = title
        save()
    end

    def self.all()
        @@all
    end

    def save()
        self.class.all() << self
    end

    def author_name()
        self.author.name if self.author
    end

end