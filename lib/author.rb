class Author

  attr_accessor :name ,:posts



  def initialize(name)
    @name = name
    @posts = []

  end

  def add_post(post)
   @posts << post
    post.author = self

end

  def add_post_by_title(name)
    post = Post.new(name)
    @posts << post
    post.author = self

  end


   def post_count
     @posts.all
   end

  def posts
   @posts
  end
end
