Rails.application.routes.draw do
  
root to: 'pages#home' 

#Так папка внутри контролле даст еще один переход в ссылке на регистрацию аккаунта
devise_for :users


resources :contacts, only: :create

get 'history',   to: 'pages#history'

get 'structure', to: 'pages#structure'

get 'statute',   to: 'pages#statute'

get 'license',   to: 'pages#license'


get 'workers',   to: 'pages#workers'
get 'positions', to: 'pages#positions'
get 'financialCUT',      to: 'pages#financialCUT'

# GET 'название нтмл файла+название пути для других файлов',to: название папки + повторНазв.
get 'risk',           to: 'servicef#risk' 
get 'property',       to: 'pages#property' 
get 'auto',           to: 'pages#auto' 
get 'item',           to: 'pages#item' 
get 'air',            to: 'pages#air' 
get 'responsibility', to: 'pages#responsibility' 
get 'turist',         to: 'pages#turist'
get 'medical',        to: 'pages#medical'
get 'personal',       to: 'pages#personal'
get 'other',          to: 'pages#other'


get 'contact-us', to: 'contacts#new', as: 'new_contact'


get 'googleb592ec2e70fa55d6', to: 'pages#googleb592ec2e70fa55d6'
end
