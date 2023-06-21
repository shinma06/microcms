class ApplicationController < ActionController::API
  def index
    articles = Article.all

    render json: Panko::Response.new(
      articles: Panko::ArraySerializer.new(articles, each_serializer: ArticleSerializer)
    )
  end
end