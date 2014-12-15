require 'open-uri'
class HomeController < ApplicationController

  def index
    stocktwitsurl = "http://stocktwits.com/"          #define url
    nasdaqurl = "http://www.nasdaq.com/symbol/"       #define url

    stocktwits = Nokogiri::HTML(open(stocktwitsurl))  #scraping Stockwit Trending stocks headline
    @trendlist = stocktwits.css(".with-ticker-card").text.split("$")
    # @trendlist.shift

    @stockquote=[]                                    #scraping NASDAQ for each stock quote
    @trendlist[1..10].each do |eqo|
         nasdaqquote = Nokogiri::HTML(open(nasdaqurl+"#{eqo}"))       #data return as $1.23*
                str  = nasdaqquote.css(".qwidget-dollar").text.to_s   #turn data to string
                str[0]=""                                             #remove dollar sign
        @stockquote << str.to_f                             #turn to float to push into array
    end

    # test data
    #@stockquote = [1, 77.67, 39.56, 9.3439, 6.26, 19.22, 46.56, 89.98, 39.76, 55.55]

  end

end