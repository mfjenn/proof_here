$:.unshift File.dirname(__FILE__) + '/../lib'
require 'rubygems'
require 'google-search'
#require 'rext'

HTML = File.dirname(__FILE__) + '/views/ggb/index.html'

File.open(HTML, 'w+') do |file|
  Google::Search::Image.new(:query => 'me on the golden gate bridge').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'au Golden gate bridge').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'en el puente Golden Gate').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'na Golden Gate Bridge').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'vid Golden Gate-bron').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => '在金门大桥').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => '골든 게이트 브리지').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'ゴールデンゲートブリッジで').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'на мост Золотые Ворота').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'bij de golden gate bridge').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'an der Golden Gate Bridge').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  Google::Search::Image.new(:query => 'गोल्डन गेट ब्रिज पर').each do |image|
    file.write %(<a href ="#{image.uri}"><img src="#{image.uri}" height="100"></a>)
  end
  
end

begin
  `open -a Safari #{HTML}`
rescue
  puts "If you're not using Safari, open #{HTML} in your browser to view the images"
end