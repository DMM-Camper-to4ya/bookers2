Rails.application.routes.draw do
root to:'homes#top'
get "home/about"=>'homes#about'
post'books'=>'books#create'
devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources:users, only:[:new, :show, :edit, :index]
resources:books, only:[:new, :index, :edit, :show]
end
