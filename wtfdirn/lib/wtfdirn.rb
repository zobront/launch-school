class Book

attr_accessor :name, :author, :link

  def initialize
  end

end

booklist = []

sapiens = Book.new()

sapiens.name = "Sapiens: A Brief History of Humankind"
sapiens.author = "Yuval Noah Harari"
sapiens.link = "https://www.amazon.com/Sapiens-Humankind-Yuval-Noah-Harari/dp/0062316095"

booklist.push(sapiens)

antifragile = Book.new()

antifragile.name = "Antifragile: Things That Gain from Disorder"
antifragile.author = "Nassim Nicholas Taleb"
antifragile.link = "https://www.amazon.com/Antifragile-Things-That-Disorder-Incerto/dp/0812979680/"

booklist.push(antifragile)

@randombook_name = booklist[rand(booklist.length)].name
@randombook_author = booklist[rand(booklist.length)].author
@randombook_link = booklist[rand(booklist.length)].link
