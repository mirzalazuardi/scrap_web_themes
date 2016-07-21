class Post < ActiveRecord::Base
  def self.scrap_url(*args)
    #args[0] isinya url
    html_data = open(args[0]).read
    #cookie = 'wordpress_ljn_436c73e372a34562810519204fc917c9=1; _ga=GA1.2.517935676.1467181890; time=7/20/2016, 11:27:20 AM'
    nokogiri_obj = Nokogiri::HTML(html_data)
    nokogiri_obj
  end
  def self.null24web(*args)
    #args[0] string selector
    ng_obj     = scrap_url('https://null24.net/')
    total_page = ng_obj.css('.page-nav.td-pb-padding-side').text.scan(/\d{1,}$/).first.to_i
    
    items      = ng_obj.css('.td_module_2.td_module_wrap.td-animation-stack')
    items.each do |e|
      h3         = e.css('h3')
      url        = h3.css('a').attr('href').text
      precontent = scrap_url(url)

      title      = h3.text
      excerpt    = e.css('.td-excerpt').text.strip
      image      = e.css('img').attr('src').text
      date_post  = e.css('time').attr('datetime').text.scan(/\d{4}-\d{2}-\d{2}/).first
      cat1       = e.css('.td-post-category').text

      binding.pry
    end
  end
end
