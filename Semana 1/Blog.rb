class Post
	attr_accessor :title, :date, :text, :sponsored
	def initialize title, date, text, sponsored = false
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
	end
end

class Blog
	attr_accessor :posts
	def initialize 
		@posts = []
	end

	def add_post post
		@posts << post
	end

	def create_front_page
		front_page = ""

		sort_posts

		@posts.each do|post|
			front_page << add_post_title(post)
			front_page << decorate_post_head
			front_page << post.text
			front_page << decorate_post_body 
		end

		front_page
	end

	def sort_posts
		@posts.sort!{|a,b| b.date <=> a.date}
	end

	def show_front_page 
		puts create_front_page
	end

	def add_post_title post
		if is_sponsored_post? post
			return decorate_post_title post
		else
			return post.title
		end
	end

	def is_sponsored_post? post
		post.sponsored
	end

	
end


blog = Blog.new

post1 = Post.new( "Creación de un post", Time.now, "Será el comienzo del blog" )
post2 = Post.new( "Primer post", Time.now, "El blog avanza con este post!" )
post3 = Post.new( "segundo post", Time.now, "Damos por terminado el blog" )

blog.add_post post1
blog.add_post post2
blog.add_post post3

blog.show_front_page
