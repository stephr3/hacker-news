class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      flash[:notice] = "Link successfully added!"
      redirect_to links_path
    else
      flash[:alert] = "Link not added"
      render :new
    end
  end

private
  def link_params
    params.require(:link).permit(:title, :url, :source, :username)
  end
end
