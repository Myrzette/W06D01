Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get root 'pages#home'
  
  get '/team', to: 'team#presentation', as: 'team'

  get '/contact', to: 'team#contact', as: 'contact'

  get '/welcome/:name', to: 'pages#welcome', as: 'welcome'

  get '/gossip/(:gossip_id)', to: 'pages#display', as: 'display_gossip'
  
  get '/user/:user_id', to: 'pages#profile', as: 'display_profile'

end
