RockPaperScissors::Application.routes.draw do
  root to: 'throws#new'
  resources :throws
end
