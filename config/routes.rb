UniAbroad::Application.routes.draw do
  match 'about-us' => 'page#about', :as => 'about', :via => 'get'
  match 'contact-us' => 'page#contact', :as => 'contact', :via => 'get'
  match 'articles' => 'article#index', :as => 'article', :via => 'get'
  match 'articles' => 'article#create', :as => 'article_create', :via => 'post'
  match 'articles/new' => 'article#new', :as => 'article_new', :via => 'get'
  match 'articles/:id' => 'article#show', :as => 'article_show', :via => 'get'
  match 'students' => 'student#index', :as => 'student', :via => 'get'
  match 'students/:id' => 'student#show', :as => 'student_show', :via => 'get'
  match 'universities' => 'university#index', :as => 'university', :via => 'get'
  match 'universities/:id' => 'university#show', :as => 'university_show', :via => 'get'
  root :to => 'page#index'
end
