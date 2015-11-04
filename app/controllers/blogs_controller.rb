class BlogsController < ApplicationController
  before_action :find_blog, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @blogs = Blog.all.order('created_at DESC')
  end

    def new
      @blog = Blog.new
    end

    def create
      @blog = Blog.new(blog_params)

      if @blog.save
        redirect_to blogs_path
      else
        render 'new'
      end
    end

    def show

    end

    def update
      if @blog.update(blog_params)
        redirect_to blog_path(@blog)
      else
        render 'edit'
      end
    end

    def edit

    end

    def find_cleanup
      @cleanup = Cleanup.find(params[:id])
    end

    private


      def destroy
        @blog.destroy
        redirect_to blogs_path
      end
      private

      def blog_params
        params.require(:blog).permit(:name, :beach_image, :location, :when, :eventtime, :description, :supplies, :additionalinfo)
      end
end
