Rails.application.routes.draw do
  
    root 'chatrooms#index'
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'

    post 'messages' , to: 'messages#create'

    mount ActionCable.server, at: '/cable'

end
