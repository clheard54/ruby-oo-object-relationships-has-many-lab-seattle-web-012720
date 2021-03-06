class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(new_post)
        new_post.author = self
    end

    def add_post_by_title(title)
        newest = Post.new(title)
        newest.author = self
    end

    def self.post_count
        Post.all.length
    end

end