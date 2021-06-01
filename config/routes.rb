Rails.application.routes.draw do
  namespace :teachers do
    resources :textbooks
  end

  namespace :students do
    resources :textbooks
  end

  devise_for :students, controllers: {
    sessions:      'students/sessions',
    passwords:     'students/passwords',
    registrations: 'students/registrations'
  }
  devise_for :teachers, controllers: {
    sessions:      'teachers/sessions',
    passwords:     'teachers/passwords',
    registrations: 'teachers/registrations'
  }
  root to: 'home#index'
end
