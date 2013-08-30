$:.unshift File.dirname(__FILE__) + '/../lib'
require 'rubygems'
require 'google-search'
require 'rext'

HTML = File.dirname(__FILE__) + '/views/machu/index.html'

File.open(HTML, 'w+') do |file|
  Google::Search::Image.new(:query => 'me at machu picchu').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'mich in Machu Picchu').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'moi au Machu Picchu').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'mě na Machu Picchu').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'mich am Machu Picchu').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => '마추 픽추에서 나').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => '我在马丘比丘').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'マチュピチュで私').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'меня в Мачу-Пикчу').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'माचू पिचू पर मुझे').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'me bij Machu Picchu').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'mig vid Machu Picchu').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  
end

begin
  `open -a Safari #{HTML}`
rescue
  puts "If you're not using Safari, open #{HTML} in your browser to view the images"
end