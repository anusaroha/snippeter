class CsssController < ApplicationController
  def index
    @snippets = Snippet.where(category_id:3).order(created_at: :desc)
  end
end
