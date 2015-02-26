require "rubygems"
require "nokogiri"
require "open-uri"
require "colorize"


city = ARGV[0]

puts "need a city" if !city
exit if !city

url = "https://www.google.com/search?q=weather+#{city}"
page = Nokogiri::HTML(open(url))
current_temp = page.css(".wob_t").first.text[0..-3]


puts current_temp
