import scrapy
from ..items import CrawlerItem


class ProxyScraper(scrapy.Spider):
    name = 'proxy_scrap'

    start_urls = [
        'https://free-proxy-list.net/',
    ]

    def parse(self, response):
        items = CrawlerItem()

        rows = response.xpath('//table[@class="table table-striped table-bordered"]//tr[position()>1]')

        for row in rows:
            ip_address = row.xpath('.//td[1]/text()').extract_first()
            port = row.xpath('.//td[2]/text()').extract_first()
            https = row.xpath('.//td[7]/text()').extract_first()

            items['ip_address'] = ip_address
            items['port'] = port
            items["https"] = True if https == "yes" else False

            yield items
