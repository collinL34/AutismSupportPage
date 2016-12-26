User.create(first_name: 'admin', last_name: nil, email: 'c@c.com',
            address: '367 at blah ave', city: 'berkeley',
            state: 'CA', password: 'p')
User.create(first_name: 'friend', last_name: nil, email: 'c@c.com',
            address: '367 at blah ave', city: 'berkeley',
            state: 'CA', password: 'p')
Category.create(name: 'Test')
Article.create(body:'this is my test article aint it so great', category_id: 1)
Image.create(link: "../images/autism.png")
Post.create(body: 'this is my test post body aint it so great', author_id: 1)
FriendShip.create(user_id: 1, friends_id: 2)