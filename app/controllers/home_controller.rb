class HomeController < ApplicationController
  def index
    @posts = Post.all
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  end
end
