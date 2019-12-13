require 'rest-client'

   puts 'What do you want to search? ' 
   search = gets.chomp.gsub(" ", "+") 

   bing_url = 'https://www.bing.com/search?q='
   response = RestClient.get(bing_url+search, headers={})   

   puts response.headers
   puts "------------------------"
   puts response.cookies
   puts "------------------------"
   puts response.code