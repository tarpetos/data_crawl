from random import choice
import scrapy
import requests
import mysql
import mysql.connector
from ..items import CrawlerItem


def str_to_void(s):
    if s is None:
        return ''
    return str(s)


def get_proxies():
    mydb = mysql.connector.connect(
        host='localhost',
        user='root',
        passwd='1111',
        database='proxy_db'
    )

    cursor = mydb.cursor()

    cursor.execute(
        """
        SELECT IF(https = 1, CONCAT('https://', ip_address, ':', port), CONCAT('http://', ip_address, ':', port))
            AS result
        FROM proxy_data
        ORDER BY id;
        """
    )

    result = cursor.fetchall()

    return result


proxies = get_proxies()


def get_random_proxy(proxy_arg):
    result = choice(proxy_arg)[0]
    if 'https' in result:
        return {'https': result}
    else:
        return {'http': result}


def get_working_proxy():
    working_proxy = {}

    for i in range(4000):
        proxy_check = get_random_proxy(proxies)
        print(f'using{proxy_check}...')
        try:
            if 'https' in proxy_check:
                r = requests.get('https://www.onetcodeconnector.org/', proxies=proxy_check, timeout=3)
            else:
                r = requests.get('http://www.onetcodeconnector.org/', proxies=proxy_check, timeout=3)

            print(r.status_code)
            if r.status_code == 200:
                working_proxy = proxy_check
                break
        except OSError as e:
            pass

    return working_proxy


class OnetCodeScraper(scrapy.Spider):
    name = 'scrap'

    start_urls = [
        'http://www.onetcodeconnector.org/find/result?s=software%20developer&a=1',
    ]
    # allowed_domains = [
    #     'www.onetcodeconnector.org'
    # ]
    #
    # proxy = get_working_proxy()
    # connection_proxy = proxy[next(iter(proxy))]
    # print(connection_proxy)
    #
    # def start_requests(self):
    #     return Request(
    #         'http://www.onetcodeconnector.org/find/result?s=software%20developer&a=1',
    #         meta={'proxy': f'{self.connection_proxy}'},
    #         callback=self.parse
    #     )

    def parse(self, response):
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
