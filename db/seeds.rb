
r1 = Role.create({ name: 'Regular', description: 'Can read items' })
r2 = Role.create({ name: 'Seller', description: 'Can read and create items. Can update and destroy own items' })
r3 = Role.create({ name: 'Admin', description: 'Can perform any CRUD operation on any resource' })

u1 = User.create({ name: 'Sally', email: 'sally@example.com', password: '123456', password_confirmation: '123456', role_id: r1.id })
u2 = User.create({ name: 'Sue', email: 'sue@example.com', password: '123456', password_confirmation: '123456', role_id: r2.id })
u3 = User.create({ name: 'Kev', email: 'kev@example.com', password: '123456', password_confirmation: '123456', role_id: r2.id })
u4 = User.create({ name: 'Jack', email: 'jack@example.com', password: '123456', password_confirmation: '123456', role_id: r3.id })

i1 = Post.create({ title: 'News1', description: 'Stylish shades', user_id: u2.id })
i2 = Post.create({ title: 'News2', description: 'Expensive timepiece', user_id: u2.id })
i3 = Post.create({ title: 'News3', description: 'Classy knitwear', user_id: u3.id })
i4 = Post.create({ title: 'News4', description: 'Cosy footwear', user_id: u3.id })
