Rails.application.routes.draw do
  root "artists#index"

  resources :artists
  resources :songs
  
  delete 'songs' => "songs#destroy_all"
end
