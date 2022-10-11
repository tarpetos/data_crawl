import scrapy
from ..items import CrawlerItem


def str_to_void(s):
    if s is None:
        return ''
    return str(s)


class FirstTaskSpider(scrapy.Spider):
    name = 'scrap'

    start_urls = [
        'https://www.onetcodeconnector.org/find/result?s=software%20developer&a=1',
    ]

    def parse(self, response, **kwargs):
        items = CrawlerItem()

        rows = response.xpath('//tr[position()>1]')
        for row in rows:
            score = str_to_void(row.xpath('.//td[1]/text()').extract_first())
            occupation = row.xpath('.//td[2]/a/text()').extract_first()
            soc_code = row.xpath('.//td[3]/text()').extract_first()

            items['score'] = score
            items['occupation'] = occupation
            items['code'] = soc_code

            yield items
