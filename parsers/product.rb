html = Nokogiri.HTML(content)

outputs << {
    "_collection": "products",
    url: page['vars']['url'],
    name: page['vars']['name'],
    status: html.css('[itemprop="itemCondition"]').text.strip,
    price: html.css('#prcIsum').text.strip
}