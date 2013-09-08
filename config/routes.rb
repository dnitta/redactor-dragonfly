RedactorDragonfly::Engine.routes.draw do
  resources :images,  :only => [:index, :create]
  resources :files, :only => [:index, :create]
end
