class Author 
    def initialize(name)
        @name = name 
    end 
    attr_accessor :name 
    def posts 
        Post.all.select {|one_post| one_post.author == self} 
    end 
    def add_post(one_post)
        one_post.author = self 
    end 
    def add_post_by_title(post_tit)
        new_post = Post.new(post_tit)
        add_post(new_post) 
    end 
    def self.post_count 
        Post.all.size 
    end 
end 