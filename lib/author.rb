class Author

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts

        Post.all
    end

    def add_post(post)
        post.author = self
        post.author_name = self.name

    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
        post.author_name = self.name
    end

    def self.post_count
        Post.all.size
    end
end