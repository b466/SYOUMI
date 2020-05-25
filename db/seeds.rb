# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
   email: 'syoumi@syoumi.com',
   password: 'syoumisyoumi',
)



Genre.create(name: DONQ)
Genre.create(name: フツウニフルウツ)
Genre.create(name: ノースショアグリーン)
Genre.create(name: カフェ)
Genre.create(name: 居酒屋)
Genre.create(name: 焼肉)
Genre.create(name: 中華)
Genre.create(name: イタリアン)
Genre.create(name: 和食)
Genre.create(name: コンビニ)