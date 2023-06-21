# frozen_string_literal: true

class ArticleSerializer < ApplicationSerializer
  attributes :id,
             :title,
             :body
end
