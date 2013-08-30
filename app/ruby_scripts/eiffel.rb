$:.unshift File.dirname(__FILE__) + '/../lib'
require 'rubygems'
require 'google-search'
# require 'rext'

HTML = File.dirname(__FILE__) + '/views/eiffel/index.html'

File.open(HTML, 'w+') do |file|
  Google::Search::Image.new(:query => 'me at the eiffel tower').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'moi la tour eiffel').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'me en la Torre Eiffel').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'me se na Eiffelovu věž').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'mig vid Eiffeltornet').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => '我在艾菲尔铁塔').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => '에펠 탑에서 나').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'エッフェル塔でくれ').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'Мне на Эйфелевой башне').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'me bij de Eiffeltoren').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'mich auf dem Eiffelturm').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  
end

begin
  `open -a Safari #{HTML}`
rescue
  puts "If you're not using Safari, open #{HTML} in your browser to view the images"
end