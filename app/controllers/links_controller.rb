class LinksController < ApplicationController
  def index
    @links = Link.all.order(points: :desc)
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      flash[:notice] = "Link successfully added!"
      redirect_to :back
    else
      flash[:alert] = "Link not added"
      render :new
    end
  end

  def update
    @link = Link.find(params[:id])
    if @link.update(link_params)
      redirect_to :back
    end
  end

  def show
    @link = Link.find(params[:id])
    # @comment = @link.comments.new
  end

private
  def link_params
    params.require(:link).permit(:title, :url, :source, :username, :points)
  end
end
