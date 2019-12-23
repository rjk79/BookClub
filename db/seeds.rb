# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Book.destroy_all
Note.destroy_all
Favorite.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('books')
ActiveRecord::Base.connection.reset_pk_sequence!('notes')
ActiveRecord::Base.connection.reset_pk_sequence!('favorites')


aa = User.create!(username: "Guest", password: "password")

ba = Book.create!(title: "Harry Potter", author: "JK Rowling", genre: "Fantasy")
bb = Book.create!(title: "Moby Dick", author: "Herman Melville", genre: "Fantasy")
bc = Book.create!(title: "Game of Thrones", author: "George R. R. Martin", genre: "Adventure")
bd = Book.create!(title: "Hobbit", author: "J. R. R. Tolkien", genre: "Action")
be = Book.create!(title: "Hunger Games", author: "Suzanne Collins", genre: "Fantasy")

ca = Note.create!(user_id: aa.id, book_id: ba.id, body: "This is a great book")

da = Favorite.create!(user_id: aa.id, book_id: ba.id)
