class ArticlesController < ApplicationController
  def show
    article = Article.find(params[:id])

    render json: Panko::Response.new(article: ArticleSerializer.new.serialize(article))
  end
end
