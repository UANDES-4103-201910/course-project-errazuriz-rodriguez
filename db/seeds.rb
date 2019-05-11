# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "LUis", lastname: "Jorge", password: "2121gg12", phone: 123123123, nick: "jon", country: "Chile", city: "Santiaago", email:"gre@gro.com")
User.create(name: "Juan", lastname: "Vas", password: "2121gg12", phone: 98123123, nick: "snow", country: "Chile", city: "Santiaago", email:"gre2@gro.com")
Post.create(user_id: 1, title: "The same", description: "Ol thing", location: "everywhere", image: "pic", solved: false, open: true, dumpster: false, deleted: false)
Comment.create(user_id: 1, post_id: 1, comment: "Basura")
Comment.create(user_id: 2, post_id: 1, comment: "Litera")
Message.create(sender_id: 1, receiver_id: 2, message: "Hola")
Message.create(sender_id: 2, receiver_id: 1, message: "hOLA")
UserLikePost.create(user_id: 1, post_id:1, like: true)
UserLikePost.create(user_id: 2, post_id:1, like: false)
PostAttachment.create(post_id: 1, file: "file/path")
PostAttachment.create(post_id: 1, file: "file/path2")
PostAttachment.create(post_id: 1, file: "file/path3")
