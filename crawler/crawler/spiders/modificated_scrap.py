import scrapy
import scrapy.exceptions

from ..pipelines import ModificatedCrawlerPipeline
from ..items import ModificatedCrawlerItem


def str_to_void(s):
    if s is None:
        return ''
    return str(s)


def add_url_part(s):
    url_part = 'https://www.onetcodeconnector.org'

    if str_to_void(s) != '':
        return url_part + str_to_void(s)
    return ''


def number_from_string(s):
    number = ''

    for symbol in s:
        if symbol.isdigit():
            number += symbol

    return number


def search_term_from_user():
    return input("Enter what you wants to find: ")


def check_for_table(response):
    if response.xpath('//table').extract_first() is None:
        ModificatedCrawlerPipeline().drop_table_if_empty()
        raise scrapy.exceptions.CloseSpider('No table exists for this query!!!')
    else:
        pass


class OnetCodeScraperModificated(scrapy.Spider):
    name = 'modificated_scrap'

    start_urls = [
        'https://www.onetcodeconnector.org' + f"/find/result?s={search_term_from_user()}" + "&a=1",
    ]

    def parse(self, response, **kwargs):
        check_for_table(response)

        items = ModificatedCrawlerItem()

        rows = response.xpath('//tr[position()>1]')

        for row in rows:
            score = str_to_void(row.xpath('.//td[1]/text()').extract_first())
            occupation = row.xpath('.//td[2]/a/text()').extract_first()
            soc_code = row.xpath('.//td[3]/text()').extract_first()

            title = add_url_part(str_to_void(row.xpath('.//td[4]//a/@href').extract_first()))
            lay_titles = add_url_part(str_to_void(row.xpath('.//td[5]//a/@href').extract_first()))
            description = add_url_part(str_to_void(row.xpath('.//td[6]//a/@href').extract_first()))

            tasks = add_url_part(str_to_void(row.xpath('.//td[7]//a/@href').extract_first()))
            tasks_number = number_from_string(row.xpath('.//td[7]/text()').extract_first())

            activities = add_url_part(str_to_void(row.xpath('.//td[8]//a/@href').extract_first()))
            activities_number = number_from_string(row.xpath('.//td[8]/text()').extract_first())

            items['score'] = score
            items['occupation'] = occupation
            items['code'] = soc_code
            items['title'] = title
            items['lay_titles'] = lay_titles
            items['description'] = description

            items['tasks'] = tasks
            items['tasks_number'] = tasks_number

            items['activities'] = activities
            items['activities_number'] = activities_number

            yield items
