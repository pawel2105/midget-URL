Shortener::Application.routes.draw do
  resources :links
  root :to => "links#new"
  get "/:short/track" => "links#track"
  get "/:short" => "links#short"
end
