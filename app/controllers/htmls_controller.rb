class HtmlsController < ApplicationController
  def index
    @snippets = Snippet.where(category_id:2).order(created_at: :desc)
  end
end
