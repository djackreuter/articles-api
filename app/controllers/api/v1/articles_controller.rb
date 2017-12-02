module Api
  module v1
    class ArticlesController < ApplicationController
      def index
        @articles = Article.order('created_at DESC')
        render json: {status: 200, message: 'Request successful', data:articles}, status: ok
      end
    end
  end
end
