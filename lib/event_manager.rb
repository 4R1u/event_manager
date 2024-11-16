# frozen_string_literal: true

require 'csv'
puts 'Event Manager Initialized!'

contents =  CSV.open(
  'event_attendees.csv',
  headers: true,
  header_converters: :symbol
)

contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]

  # If the zipcode is exactly five digits, then assume it is ok.
  # If the zipcode is more than five digits, then truncate it to the first five digits.
  # If the zipcode is less than five digits, then add zeros to the front until it becomes five digits.

  puts "#{name} #{zipcode}"
end
