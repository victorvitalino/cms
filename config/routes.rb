Rails.application.routes.draw do

  mount RedactorRails::Engine => '/redactor_rails'
  namespace :cms, path: 'conteudo' do 
    root 'pages#index'
    resources :posts, path: 'postagens'
    resources :post_categories, path: 'postagem_categorias'
    
    resources :pages, path: 'paginas'
    resources :page_categories, path: 'pagina_categorias'

    resources :users, path: 'usuario'
  end

  namespace :content, path: '/' do 
    root 'home#index'

    resources :post_categories
    resources :posts
    
    resources :page_categories
    resources :pages
       
  end

  namespace :morarbem, path: '/morarbem' do

    get 'rii', to: 'rii#index'
    get 'rie', to: 'rie#index'

  end

end
