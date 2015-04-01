Blorgh::Engine.routes.draw do
  resources :posts
  resources :articles

  get 'failures/index'
  root to: "articles#index"
end
