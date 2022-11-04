import scrapy


class CrawlerItem(scrapy.Item):
    score = scrapy.Field()
    occupation = scrapy.Field()
    code = scrapy.Field()


class ModificatedCrawlerItem(scrapy.Item):
    score = scrapy.Field()
    occupation = scrapy.Field()
    code = scrapy.Field()
    title = scrapy.Field()
    lay_titles = scrapy.Field()
    description = scrapy.Field()
    tasks = scrapy.Field()
    tasks_number = scrapy.Field()
    activities = scrapy.Field()
    activities_number = scrapy.Field()
