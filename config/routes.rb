Rails.application.routes.draw do
  get "/" => 'events#top'
  get "/event" => 'events#top'
  get "/event/:id" => 'events#detail'
end
