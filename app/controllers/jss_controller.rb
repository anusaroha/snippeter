class JssController < ApplicationController
  def index
    @snippets = Snippet.where(category_id:4).order(created_at: :desc)
  end
end
