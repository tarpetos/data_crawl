import scrapy


class CrawlerItem(scrapy.Item):
    # onet_code_connector items
    score = scrapy.Field()
    occupation = scrapy.Field()
    code = scrapy.Field()

    # proxy items
    ip_address = scrapy.Field()
    port = scrapy.Field()
    https = scrapy.Field()
