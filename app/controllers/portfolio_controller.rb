class PortfolioController < ApplicationController
  def index
    @projects = Project.includes([:tags, :likes]).all
  end
  
  def update
    @article = Project.find(params[:id])
    if params[:likes]
      @article.likes=@article.likes+1
    elsif params[:views]
      @article.views=@article.views+1
    end
    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html {redirect_to @article, :notice => "Project likes Updated"}
      else
        format.html {render :action=>"edit", :notice=> "Unable to update Project , sorry! :("}
      end
    end
  end
end
