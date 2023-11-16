
require 'rss'
require 'open-uri'

def fetch_display (feed_url)
    begin
        rss_content = URI.open(feed_url).read
        feed = RSS::Parser.parse(rss_content)

        puts "Titulo: #{feed.channel.title}"
        puts "Descrição: #{feed.channel.description}"
        puts "Link: #{feed.channel.link}"
        puts "-----------------------------------------"

        feed.items.each do |item|
            puts "Item: #{item.title}"
            puts "Descrição: #{item.description}"
            puts "Link: #{item.link}"
            puts "-----------------------------------------"
        end
    rescue StandardError => e
        puts "erro ao pesquisar ou analisar o feed: #{e.message}"
    end
end

print "coloque aqui a URL: "
feed_url = gets.chomp

=begin
    Exemplos de feeds com URLs RSS
        The New York Times (technology): https://rss.nytimes.com/services/xml/rss/nyt/Technology.xml
        National Geographic (latest news): http://feeds.nationalgeographic.com/ng/News/News_Main
        NASA Breaking News: https://www.nasa.gov/rss/dyn/breaking_news.rss
=end

fetch_display(feed_url)
