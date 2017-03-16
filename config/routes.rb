Rails.application.routes.draw do
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
  devise_for :users
  resources :themes
  resources :projects
  resources :locals
  resources :functions
  resources :abilities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
