require 'author.rb'

class Post
    attr_accessor :title, :author
    @@all=[]
    def initialize(post_title)
        @title=post_title
        @@all << self
    end
    def self.all
        @@all
    end
    def author_name
        author ? author.name : nil
    end    
end
