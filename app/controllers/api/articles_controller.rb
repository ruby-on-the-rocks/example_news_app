class Api::ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:search]}&apiKey=YOUR-API-KEY-HERE")
    @articles = response.parse["articles"]
    render "index.json.jbuilder"
  end
end
