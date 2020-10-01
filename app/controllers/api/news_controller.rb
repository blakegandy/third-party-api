class Api::NewsController < ApplicationController
  def show
    @news = HTTP
    .headers({
      "X-User-Header" => Rails.application.credentials.aws["x-api-key"]
      "authorization" => "Bearer #{Rails.application.credentials.news_api[:api_key]}"
    })
    .get("https://api-beta.civicfeed.com/news/search?q=#Congress").parse
    render show.json.jb
  end
end
