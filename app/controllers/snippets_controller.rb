class SnippetsController < ApplicationController

  def index
    @snippets = Snippet.all
  end

  def new
    @snippet = Snippet.new
  end

  def create
    category = Category.find snippet_params[:category_id]
    snippet_params[:body] = "~~~~~#{category.name.downcase}\n#{snippet_params[:body]}\n~~~~~"
    @snippet = Snippet.new(snippet_params)
    @snippet.save
    redirect_to @snippet
  end

  def show
    @snippet = Snippet.find params[:id]
  end


  private
    def snippet_params
      params.require(:snippet).permit(:title, :body, :category_id)
    end

end
