class BlogsController < ApplicationController

  respond_to :html

  def index
    @blogs = Blog.paginate(page: params[:page], per_page: 10)
    respond_with(@blogs)
  end

  def show
    @blog = Blog.find(params[:id])
    respond_with(@blog)
  end

  def new
    @blog = Blog.new
    respond_with(@blog)
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    respond_with(@blog)
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update(blog_params)
    respond_with(@blog)
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    respond_with(@blog)
  end

  private
    def blog_params
      params.require(:blog).permit(:creator, :title, :body, :date)
    end
end
