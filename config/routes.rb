Rails.application.routes.draw do
  # このファイル内で利用可能なDSLの詳細については「http://guides.rubyonrails.org/routing.html」を参照してください
  get 'todolists/new'
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#create'
  get 'todolists' => 'todolists#index'
  
  # .../todolists/1 や .../todolists/3 に該当する
  get 'todolists/:id' => 'todolists#show', as: 'todolist'

end
