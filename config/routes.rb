Rails.application.routes.draw do
devise_for :users
root to:'homes#top'
get "home/about"=>'homes#about'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources:users, only:[:new, :show, :edit, :index, :update]
resources:books, only:[:new, :index, :create, :edit, :show, :destroy, :update]
end
