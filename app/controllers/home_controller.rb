class HomeController < ApplicationController


  def index
    @snippets = Snippet.order(created_at: :desc)
  end

end
