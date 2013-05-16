UniAbroad::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  devise_for :users

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  match 'about-us' => 'page#about', :as => 'about', :via => 'get'
  match 'contact-us' => 'page#contact', :as => 'contact', :via => 'get'
  match 'articles' => 'articles#index', :as => 'article', :via => 'get'
  match 'articles' => 'articles#create', :as => 'article_create', :via => 'post'
  match 'articles/new' => 'articles#new', :as => 'article_new', :via => 'get'
  match 'articles/:id' => 'articles#show', :as => 'article_show', :via => 'get'
  match 'students' => 'student#index', :as => 'student', :via => 'get'
  match 'students/:id' => 'student#show', :as => 'student_show', :via => 'get'
  match 'universities' => 'university#index', :as => 'university', :via => 'get'
  match 'universities/:id' => 'university#show', :as => 'university_show', :via => 'get'
  match '~facebook/education-abroad.com.ua' => redirect('http://facebook.com'), :as => 'facebook'
  match '~twitter/education-abroad.com.ua' => redirect('http://twitter.com'), :as => 'twitter'
  match '~google/education-abroad.com.ua' => redirect('http://google.com'), :as => 'google'
  match '~tumblr/education-abroad.com.ua' => redirect('http://tumblr.com'), :as => 'tumblr'
  root :to => 'page#index'
end
