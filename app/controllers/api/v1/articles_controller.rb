module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        articles = Article.order('created_at DESC')
        render json: {status: 200, message: 'Request successful', data:articles}, status: :ok
      end

      def show
        article = Article.find(params[:id])
        render json: {status: 200, message: 'Request successful', data:article}, status: :ok
      end

      def create
        article = Article.new(article_params)

        if article.save()
          render json: {status: 200, message: 'Article saved', data:article}, status: :ok
        else
          render json: {status: 418, message: 'Something went wrong', data:article.errors}, status: :unprocessable_entity
        end
      end

      private
        def article_params
          params.permit(:title, :body)
        end

    end
  end
end
