class PagesController < ApplicationController
  respond_to :html
  
  def index
  	@blog = Blog.all
  end

  def contact
  end

  def about
  end
end
