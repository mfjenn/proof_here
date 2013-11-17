#$:.unshift File.dirname(__FILE__) + '/../lib'
require 'rubygems'
require 'google-search'
#require 'rext'

HTML = File.dirname(__FILE__) + 'index.html'

File.open(HTML, 'w+') do |file|
  Google::Search::Image.new(:query => 'me at the taj mahal').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'moi au Taj Mahal').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'me en el Taj Mahal').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'mě na Taj Mahal').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'mich am Taj Mahal').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => '타지 마 나').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => '我在泰姬陵').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'エッフェル塔でくれ').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'меня в Тадж-Махале').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'タージマハルで私').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'me bij de Taj Mahal').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'mig vid Taj Mahal').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  
end

begin
  `open -a Safari #{HTML}`
rescue
  puts "If you're not using Safari, open #{HTML} in your browser to view the images"
end