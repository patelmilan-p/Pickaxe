class BookInStock
  attr_reader :isbn
  attr_accessor :price, :stock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
    @stock = 0
  end

end

