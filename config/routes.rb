Rails.application.routes.draw do
 
    #1. changed the root to devise login page. 2. received error 3. had to code in a scope method 
  
  root to: 'pages#home'
  resources :users
  get 'users/:id' => 'users#show'
  

  devise_for :users,  
             :path => '', 
             :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile'}, 
             :controllers => {:omniauth_callbacks => 'omniauth_callbacks'}  
             
  end
#changes route path. e.g. localhost:300/user/sign_in => localhost:300/sign_in.