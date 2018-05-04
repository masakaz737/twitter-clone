Rails.application.routes.draw do
  root to: 'pages#top'
  resources :states do
    collection do
      post :confirm
    end
  end
end
