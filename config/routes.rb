Rails.application.routes.draw do
  get 'dashboard/index', to: 'dashboard#index', as: :dashboard_index
  get 'dashboard/normal', to: 'dashboard#normal', as: :dashboard_normal

  root to: 'dashboard#index'
  resources :languages
  resources :user_tasks
  resources :task_requirements
  resources :user_abilities
  resources :tasks
  resources :user_story_acceptance_criterions
  resources :user_stories
  resources :sprints
  resources :user_languages
  resources :releases
  resources :function_user_projects
  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :themes
  resources :projects
  resources :locals
  resources :functions
  resources :abilities

  scope "/administrador" do
    resources :users
  end
  get 'users/change_approved/:id', to: 'users#change_approved', as: :change_approved
end
