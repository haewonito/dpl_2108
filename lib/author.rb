require './lib/book'

class Author

  attr_reader :first_name, :last_name, :books

  def initialize (hash)
    @first_name = hash[:first_name]
    @last_name = hash[:last_name]
    @books = []
  end

  def name
    @first_name + " " + @last_name
  end

  def write(title, publication_date)
    new_book = Book.new({author_first_name: @first_name,
                          author_last_name: @last_name,
                          title: title,
                          publication_date: publication_date
                        })
  end

  def publish(book)
    @books << book
  end

end
