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

Article.create(body:'this is my test article aint it so great', category_id: 1, author_id: 1)
Article.create(body: 'This is a great article I found very interesting', category_id: 2, link: 'https://www.autismparentingmagazine.com/reflection-of-autism/', author_id: 1)
Article.create(body: 'I really found this helpful for me to think about', category_id: 5, link: 'https://www.autismparentingmagazine.com/giving-voice-non-verbal-kids/', author_id: 1)
Article.create(body: 'very nice article', category_id: 2, link: 'https://www.autismparentingmagazine.com/handling-thanksgiving-stressors-with-autism/', author_id: 1)
Article.create(body: 'Well thought through  article', category_id: 2, link: 'https://www.autismparentingmagazine.com/handling-thanksgiving-stressors-with-autism/', author_id: 1)
Article.create(body:'Helpful article', category_id: 6, link: 'https://www.autismparentingmagazine.com/divorced-supporting-autism-child/', author_id: 1)

Image.create(link: "../images/autism.png")
Friendship.create(user_id: 1, friend_id: 2)