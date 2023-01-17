import scrapy
from ..items import CrawlerItem


class ProxyScraperAnother(scrapy.Spider):
    name = 'proxy_scrap_another'
    start = 64
    start_urls = [
        'https://hidemy.name/en/proxy-list/',
    ]

    def parse(self, response):
        items = CrawlerItem()

        rows = response.xpath('//tr[position()>1]')

        for row in rows:
            ip_address = row.xpath('.//td[1]/text()').extract_first()
            port = row.xpath('.//td[2]/text()').extract_first()
            https = row.xpath('.//td[5]/text()').extract_first()

            items['ip_address'] = ip_address
            items['port'] = port
            items['https'] = True if https == 'HTTPS' else False

            yield items

        next_page = f'https://hidemy.name/en/proxy-list/?start={ProxyScraperAnother.start}#list'
        if ProxyScraperAnother.start <= 4800:
            ProxyScraperAnother.start += 64
            yield response.follow(next_page, callback=self.parse)
