Rails.application.routes.draw do
  # get '/bookers/book' => 'book#index', as: :bookers_book
  # get 'book/show'
  # get 'book/edit'

  resources :book, path: '/bookers/book'

  # resources :book #これ1個でnew,show,delete,create,edit,index...自動生成

  get '/bookers' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
