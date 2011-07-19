require_relative 'csv_reader'

reader = CsvReader.new
ARGV.each do |csv_filename|
  STDERR.puts "processing #{csv_filename}"
  reader.read_csv_file(csv_filename)
end
reader.number_of_each_isbn
puts "Total value in Stock: #{reader.total_value_in_stock}"

