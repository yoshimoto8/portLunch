# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


## ユーザー情報(worker)
worker = Worker.new(email: 'example@example.com', password: 'example')
worker.save!
# Worker.create(
#   email: "yamada@example.com",
#   encrypted_password: "aaaaaaaaa",
  # worker_name: "山田太郎",
  # one_word: "海賊王に俺はなる！",
  # want_to_do_thing: "お金が欲しい",
  # self_introduction: "俺が海賊王だ"
# )
