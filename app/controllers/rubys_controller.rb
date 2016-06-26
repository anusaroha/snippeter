class RubysController < ApplicationController
  def index
    @snippets = Snippet.where(category_id:1).order(created_at: :desc)
  end
end
