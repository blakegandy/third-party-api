Rails.application.routes.draw do
  namespace :api do
    get "/news" => "news#show"
  end
end
