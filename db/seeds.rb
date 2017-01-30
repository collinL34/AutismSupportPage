User.create(first_name: 'admin', last_name: nil, email: 'c@c.com',
            address: '367 at blah ave', city: 'berkeley',
            state: 'CA', password: 'p')
User.create(first_name: 'friend', last_name: nil, email: 'c@c.com',
            address: '367 at blah ave', city: 'berkeley',
            state: 'CA', password: 'p')
Category.create(name: 'Test')
Category.create(name: 'stories')
Category.create(name: 'medical')
Category.create(name: 'inspirational')
Category.create(name: 'financial')
Category.create(name: 'support')

# art1 = Article.create(category_id: 1, link: '', author_id: 1)
# art4 = Article.create(category_id: 2, link: , author_id: 1)
# art5 = Article.create(category_id: 5, link: , author_id: 1)
# art6 = Article.create(category_id: 2, link: , author_id: 1)
# art7 = Article.create(category_id: 2, link: , author_id: 1)
# art8 = Article.create(category_id: 6, link: , author_id: 1)

# articles = [art1, art2, art3, art4, art5, art6, art7, art8]

# articles.each do |article| 
  a.body    = Article.text_grabber(nokogiri_obj) 
  a.image_tag = Article.img_grabber(nokogiri_obj)
# end

# Friendship.create(user_id: 1, friend_id: 2)
  article.title   = Article.title_grabber(nokogiri_obj) 

a = Article.new(category_id: 1, link: 'http://www.dw.com/en/child-autism-diagnosis-in-vogue-in-germany/a-37306457', author_id: 1)
nokogiri_obj    = Article.nokogiri_obj_makr(a.link)