Rails.application.routes.draw do
  
  get 'atender/index'
  get 'atender/pide_datos'
  #get 'atender/configura'
  get 'atender/siguiente'
  get 'atender/atendido'
  get 'atender/cancelar'
  root "inicio#index"
  get "inicio/index"

  resources :puestos
  resources :filas
  resources :fila_puestos

  get "monitor/index"
  get "configurar/index"

  get "registro/index"
  get "registro/new"
  get "registro/registrar"
  get "registro/confirma"
  post "registro/create"
  get "registro/show"
  get 'salir/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
