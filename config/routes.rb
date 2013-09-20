UniAbroad::Application.routes.draw do

  devise_for :users
  mount Ckeditor::Engine                    => '/ckeditor'
  mount RailsAdmin::Engine                  => '/admin',                          :as => 'rails_admin'
  root :to => redirect("/#{I18n.default_locale}")
  
  scope '(:locale)', :locale => /ru|uk/ do
    match 'about-us'                          => 'page#about',                      :as => 'about', :via => 'get'
    match 'contact-us'                        => 'contact#new',                     :as => 'contact', :via => :get
    match 'contact-us'                        => 'contact#create',                  :as => 'contact', :via => :post
    match 'articles'                          => 'articles#index',                  :as => 'article', :via => 'get'
    match 'articles/:id'                      => 'articles#show',                   :as => 'article_show', :via => 'get'
    match 'articles/tag/:tag'                 => 'articles#index',              :as => 'article_tag', :via => 'get'
    match 'students'                          => 'student#index',                   :as => 'student', :via => 'get'
    match 'students/:id'                      => 'student#show',                    :as => 'student_show', :via => 'get'
    match 'universities'                      => 'university#index',                :as => 'university', :via => 'get'
    match 'universities/:id'                  => 'university#show',                 :as => 'university_show', :via => 'get'
    match '~facebook/education-abroad.com.ua' => redirect('https://www.facebook.com/pages/Education-Abroad/549514665090016?skip_nax_wizard=true'),   :as => 'facebook'
    match '~vk/education-abroad.com.ua'  => redirect('http://vk.com/education_abroad_lviv'),    :as => 'vk'
    match '~linkedin/education-abroad.com.ua'   => redirect('http://www.linkedin.com/profile/view?id=258468555&trk=hb_tab_pro_top'),     :as => 'linkedin'
    root                                  :to => 'page#index'
  end

end
