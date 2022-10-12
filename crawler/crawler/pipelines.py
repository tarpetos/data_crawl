import sqlite3


class CrawlerPipeline:

    def __init__(self):
        self.con = sqlite3.connect('result.db')
        self.cur = self.con.cursor()
        self.create_table()

    def create_table(self):
        self.cur.execute("""CREATE TABLE IF NOT EXISTS stored_data(
            score VARCHAR(10),
            occupation VARCHAR(100),
            code VARCHAR(25)
        )""")

    def process_item(self, item, spider):
        self.cur.execute("""INSERT OR IGNORE INTO stored_data VALUES (?,?,?)""",
                         (item['score'], item['occupation'], item['code']))
        self.con.commit()
        return item
