require 'csv'
require_relative 'book_in_stock'

class CsvReader
  attr_reader :books_in_stock
  def initialize
    @books_in_stock = []
  end

  def read_csv_file(csv_file_name)
    isbn_hash = Hash.new
    CSV.foreach(csv_file_name, headers: true ) do |row|

      @books_in_stock << BookInStock.new(row["ISBN"], row["Amount"])
    end
  end

  def total_value_in_stock
    sum = 0.0
    @books_in_stock.each{|book| sum += book.price}
    sum
  end

  def number_of_each_isbn
    counter_hash = Hash.new
    @books_in_stock.each do |book|
      if counter_hash[book.isbn]
        counter_hash[book.isbn]  += 1
      else
        counter_hash[book.isbn]   = 1
      end
    end
    counter_hash.each do |isbn, stock|
      puts "ISBN: #{isbn} Stock: #{stock}"
    end
  end

end

