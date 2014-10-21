class BlogsController < ApplicationController

	def new
		@blog = Blog.new
	end

	def create
		blog_props = params[:blog]
		@blog = Blog.new(blog_props)
		if @blog.save
			redirect_to blogs_path, :notice => "Your blog has benn created!"
		

		else

			render :new
		end
	end

	def index
		@blogs = Blog.order('created_at DESC')
	end

	def edit
		@blog = Blog.find(params[:id])
		
		
	end

	def show
		@blog = Blog.find(params[:id])
		render :layout => 'application'		

	end
	def update
		@blog = Blog.find(params[:id])
		blog_props = params[:blog]
		if @blog.update_attributes(blog_props)
			redirect_to blog_path(@blog), :notice=>"Your blog entry has been updates!"
		else
			render :edit
		end
	end

	def destroy
		@blog = Blog.find(params[:id])
		if @blog.destroy
			redirect_to blogs_path, :notice => "Your blog is deleted!"
		else
			redirect_to blogs_path, :notice => "Your blog is not deleted!"

		end
	end

end


