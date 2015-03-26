Blorgh::Engine.routes.draw do
  resources :articles

  get 'failures/index'
  root to: "articles#index"
end
