Rails.application.routes.draw do
  get 'dashboard/index', to: 'dashboard#index', as: :dashboard_index
  get 'dashboard/normal', to: 'dashboard#normal', as: :dashboard_normal

  root to: 'dashboard#index'
  resources :languages
  resources :task_requirements
  resources :user_tasks
  resources :user_abilities
  resources :user_languages
  devise_for :users, controllers: {registrations: 'users/registrations'}

  resources :projects do
    resources :function_user_projects
    resources :releases
    resources :sprints
    resources :tasks
    resources :themes do
      resources :user_stories do
        resources :user_story_acceptance_criterions
      end
    end
  end

  get 'get/project', to: 'projects#select', as: :selection_project
  resources :locals
  resources :functions
  resources :abilities

  scope "/administrador" do
    resources :users
  end
  get 'users/change_approved/:id', to: 'users#change_approved', as: :change_approved
end
