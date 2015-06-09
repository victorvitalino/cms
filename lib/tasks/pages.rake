namespace :pages do
  task :migrate => :environment do
    require 'json'

    file = File.read('public/pages.json')
    hash = JSON.parse(file)
    hash.each do |h|
      @page = Page.new
      @page.title = h['title']
      @page.content = h['content']
      @page.page_category_id = h['page_category_id']
      @page.publish = h['publish']
      @page.save
    end
  end

  task :posts => :environment do
    require 'json'

    file = File.read('public/posts.json')
    hash = JSON.parse(file)
    hash.each do |h|

      @post = Post.new
      @post.title = h['title']
      @post.content = h['content']
      @post.post_category_id = h['post_category_id']
      @post.slider = h['slider']
      @post.thumb = h['thumb']
      @post.publish = h['publish']
      @post.feature = h['feature']
      @post.save!
    end
  end

  task :categories => :environment do
    require 'json'

    file = File.read('public/pages_categories.json')
    hash = JSON.parse(file)
    hash.each do |h|

      @category = PageCategory.new
      @category.id = h['id']
      @category.name = h['name']
      @category.status = h['status']
      @category.save!
    end

    file = File.read('public/post_categories.json')
    hash = JSON.parse(file)
    hash.each do |h|

      @category = PostCategory.new
      @category.id = h['id']
      @category.name = h['name']
      @category.status = h['status']
      @category.save!
    end
    
  end

end