#!/usr/local/bin/python3

# By Jelecool and modified by SomeCanadian

import scrapy

class Scraper(scrapy.Spider):
    name = "some-scrapper"

    #start_urls = [
        #'https://github.com/DominicBreuker/pspy/releases/latest']

    # instead of start_urls hard coded, use argument: -a start_url="http://myurl"
    # ex: scrapy runspider test-scrap.py -a start_url="http://myurl" -o outputfile.csv
    def __init__(self, *args, **kwargs):
        super(Scraper, self).__init__(*args, **kwargs)
        
        self.start_urls = [kwargs.get('start_url')]

    def parse(self, response):
        bloc = response.css(".Box.Box--condensed.mt-3").css("div")[0]
        SET_SELECTOR = '.d-flex'
        for link in bloc.css(SET_SELECTOR):
            yield {
                'link': link.css('a').attrib['href']
            }
