module Api
  module V1
  	class ArticlesController < ApplicationController
  	  def index
  	  	articles = Article.order('created_at DESC');
  	  	render json: {status: 'SUCESS', message: 'Loaded articles', data: articles}, status: :ok
  	  end

  	  def show
  	  	article = Article.find(params[:id])
  	  	render json: {status: 'SUCCESS', message: 'Loaded article', data: article}, status: :ok
  	  end

  	  def create
  	  	article = Article.new(article_params)
  	  	if article.save
  	  	  render json: {status: 'SUCCESS', message: 'saved article', data: article}, status: :ok
  	    else
  	      render json: {status: 'Failure/error', message: 'article not saved', data: article.errors}, status: :unprocessable_entity
  	    end
  	  end

  	  def destroy
  	  	article = Article.find(params[:id])
  	  	article.destroy
  	  	render json: {status: 'SUCCESS', message: 'article deleted', data: article}, status: :ok
  	  end

  	  def update
  	    article = Article.find(params[:id])
  	    if article.update(article_params)
  	      render json: {status: 'SUCCESS', message: 'article updated', data: article}, status: :ok
  	    else
  	      render json: {status: 'Failure/error', message: 'article not updated', data: article.errors}, status: :unprocessable_entity
  	    end 
  	  end

  	  private

  	  def article_params
  	  	params.permit(:title, :body)
  	  end
  	end
  end
end