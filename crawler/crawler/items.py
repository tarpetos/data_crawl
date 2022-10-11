import scrapy


class CrawlerItem(scrapy.Item):
    score = scrapy.Field()
    occupation = scrapy.Field()
    code = scrapy.Field()