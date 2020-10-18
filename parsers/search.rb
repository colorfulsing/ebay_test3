html = Nokogiri.HTML(content)
products = html.css('.srp-results > .s-item')

products.each do |element|
  name = element.css('.s-item__link').text.strip
  url = element.css('.s-item__link').attr('href').to_s.strip
  next if url == ''
  pages << {
    url: url,
    page_type: "product",
    vars: {
        name: name,
        url: url
    }
  }
end