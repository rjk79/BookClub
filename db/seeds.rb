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

ba = Book.create!(title: "Harry Potter", author: "JK Rowling", genre: "Fantasy", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis ipsum gravida elit lacinia tincidunt. Mauris tincidunt porttitor sapien, sit amet fringilla felis. Nulla sed quam ipsum. Aenean tempor nibh ex, nec efficitur orci iaculis non. In vehicula, nulla nec suscipit varius, mi odio commodo elit, vitae tincidunt arcu lectus nec sem. Nulla facilisi. Cras bibendum, felis ut molestie ornare, sem neque molestie purus, at volutpat ligula mauris ut nulla. Curabitur at ante quis purus ullamcorper aliquet. Maecenas eleifend facilisis felis, eu egestas lorem luctus pulvinar. Pellentesque aliquam felis quis dictum scelerisque. Sed id magna leo. Etiam et lacus volutpat, commodo ligula sit amet, eleifend urna. Nullam sodales arcu eu enim ornare, vitae mattis ante luctus. Proin quis tortor id nulla vestibulum sollicitudin. Vestibulum cursus vitae massa quis tristique.")
bb = Book.create!(title: "Moby Dick", author: "Herman Melville", genre: "Fantasy", text: "Curabitur scelerisque tortor nec viverra porta. Duis lacinia, magna vitae hendrerit pharetra, libero justo laoreet odio, sed malesuada sem nunc non est. Fusce dapibus nisi ac tempor volutpat. Vivamus vehicula erat ac ligula suscipit, vel porta ante pharetra. Vivamus mollis elementum efficitur. Integer vel rutrum velit. Pellentesque erat ipsum, pellentesque ut est in, scelerisque aliquet dolor. Integer quis dui nec elit hendrerit placerat id sit amet velit. Integer iaculis magna at aliquet condimentum. Maecenas odio sem, ullamcorper eget purus sit amet, ornare dictum odio.")
bc = Book.create!(title: "Game of Thrones", author: "George R. R. Martin", genre: "Adventure", text: "Pellentesque et dignissim ex, sed pulvinar enim. Nullam nec urna dolor. Ut quis magna sit amet magna tempus aliquet. Donec vitae venenatis nisl. Vivamus dapibus ornare dignissim. Pellentesque mattis tempus sollicitudin. In hac habitasse platea dictumst. Proin metus elit, ultricies vel facilisis condimentum, pulvinar id ipsum. Quisque posuere felis in bibendum lobortis.")
bd = Book.create!(title: "Hobbit", author: "J. R. R. Tolkien", genre: "Action", text: "In ultrices et elit sit amet bibendum. Nulla eget quam est. Fusce convallis commodo tortor, non ultrices augue hendrerit nec. Integer at felis est. Donec porttitor, purus at malesuada interdum, mauris lectus lacinia nisl, eget tincidunt mi justo nec nunc. Nullam quis nulla in neque sollicitudin vehicula ut a nibh. Vivamus vulputate tellus et dapibus scelerisque. In ut auctor metus. Donec ut ultricies turpis. Duis egestas dictum tincidunt.")
be = Book.create!(title: "Hunger Games", author: "Suzanne Collins", genre: "Fantasy", text: "Praesent in metus interdum, faucibus felis finibus, laoreet mi. Sed varius efficitur augue eu luctus. Aenean vestibulum condimentum est et congue. Phasellus non nisi leo. Mauris mattis pellentesque lorem, et posuere erat sodales sed. Sed aliquet orci eget lacus elementum, sit amet pretium nunc maximus. Pellentesque commodo, arcu a placerat maximus, massa ex rhoncus enim, non pretium ligula quam ut sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae sollicitudin mauris. Ut scelerisque purus a sodales rutrum. Integer ut aliquam mauris. Nullam diam turpis, efficitur vitae metus eget, scelerisque scelerisque mi.")

ca = Note.create!(user_id: aa.id, book_id: ba.id, body: "This is a great book")

da = Favorite.create!(user_id: aa.id, book_id: ba.id)
