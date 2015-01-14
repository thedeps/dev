Rails.application.routes.draw do

  
  #Rota para poder adicionar partida a campeonato
  post "/championships/add_match" => "championships#add_match"
  
  #Rota para deletar partida do campeonato
  delete "/championships/:championship_id/matches/:id" => "championships#delete_match"
  
  resources :championships do
    resources :matches
  end

  resources :matches 

  devise_for :admins
  #Rota relacionado a partida
  #Rota relacionado a equipe
  #Rota para poder adicionar usuário(jogador) a equipe
  post "/teams/add_user" => "teams#add_user"
  
  #Rota para deletar usuário(jogador) da equipe
  delete "/teams/:team_id/users/:id" => "teams#delete_user"
  
  #Rota para permitir que usuário seja alterado dentro de time
  resources :teams do
    resources :users
  end
  #Rota do devise e ActiveAdmin, ActiveAdmin::Devise.config
  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
   resources :users
   
  #Rota de Categorias gerada pelo scallfold
  resources :categories
  
  #Rota para pegar a página estática home
  root :to => 'static_pages#home'
  
  
end
