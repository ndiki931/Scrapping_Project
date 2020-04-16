require 'nokogiri'
require 'open-uri'

def crypto_parsing
# give a message to make the user waiting if connection is to low
puts "Wait a second data is coming..."

# Régister URL of the needed website

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

# From the website, get an array of the currencies name and convert it to string
currency_name_array = page.xpath("//tr/td/a[contains(@class, 'currency-name-container')]/text()").map {|x| x.to_s }
# From the website, get an array of the currencies price and convert it to string
currency_value_array = page.xpath("//tr/td/a[contains(@class, 'price')]/text()").map {|x| x.to_s }

# Convert the 2 arrays into hash
currency_result = Hash[currency_name_array.zip(currency_value_array)]

puts currency_result

end

def perform
	crypto_parsing
end
perform