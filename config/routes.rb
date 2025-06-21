Rails.application.routes.draw do
  resources :books, path: '/bookers/books'
 
  get 'books/new'
  get 'books/show'
  get 'books/edit'

  # Resourceあるから不要? patch 'books/:id' => 'books#update', as: 'update_book'

  # post 'books/new' => 'lists#create'   #ここを追記しますresources で自動作成されるので不要？
  get '/bookers' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
