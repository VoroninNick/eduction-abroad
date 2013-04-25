UniAbroad::Application.routes.draw do
  get "article/index"

  get "article/show"

  match 'about-us' => 'page#about', :as => 'about', :via => 'get'
  match 'contact-us' => 'page#contact', :as => 'contact', :via => 'get'
  match 'articles' => 'article#index', :as => 'article', :via => 'get'
  match 'articles/:id' => 'article#show', :as => 'article_show', :via => 'get'
  root :to => 'page#index'
end
