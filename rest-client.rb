require 'rest-client'

   puts 'What do you want to search? ' 
   search = gets.chomp.gsub(" ", "+") 

   bing_url = 'https://www.bing.com/search?q='
   response = RestClient.get(bing_url+search, headers={})   
   puts "Your headers are: #{response.headers}"
   puts "------------------------"
   puts "Your cookies are: #{response.cookies}"
   puts "------------------------"
   puts "Code response: #{response.code}"