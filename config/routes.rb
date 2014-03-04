MyEmberApp::Application.routes.draw do
  resources :posts
  root :to => 'assets#index'
end
