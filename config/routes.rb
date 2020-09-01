Rails.application.routes.draw do
  resources :artist_instruments, :artists, :instruments
end
