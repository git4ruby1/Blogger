class BlogsController < ApplicationController

	def new
		@blog = Blog.new
	end

	def create
		blog_props = params[:blog]
		@blog = Blog.new(blog_props)
		if @blog.save
			show create.html.erb
		

		else

			render :new
		end
	end

	def index
		@blogs = Blog.order('created_at DESC')
	end

end


