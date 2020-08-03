class Post
	attr_accessor :title, :author
	@@all = []

	def initialize(title)
		self.title = title
		self.class.all.push(self)
	end

	def self.all
		@@all 
	end

	def author_name
		if self.author
			return self.author.name
		else
			return nil
		end
	end
end