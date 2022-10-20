import sqlite3
import mysql
import mysql.connector


class ProxyCrawlerPipeline:
    def __init__(self):
        self.con = mysql.connector.connect(
            host='localhost',
            user='root',
            passwd='1111',
            database='proxy_db'
        )
        self.cur = self.con.cursor()
        self.create_table()

    def create_table(self):
        self.cur.execute(
            """
            CREATE TABLE IF NOT EXISTS proxy_data(
                id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                ip_address VARCHAR(25),
                port INT,
                https BOOLEAN,
                CONSTRAINT unique_ip UNIQUE (ip_address, port, https)
            )
            """
        )

    def process_item(self, item, spider):
        self.cur.execute(
            "INSERT INTO proxy_data(ip_address, port, https) VALUES (%s, %s, %s)",
            (item['ip_address'], item['port'], item['https'])
        )

        self.con.commit()
        return item


class CrawlerPipeline:

    def __init__(self):
        self.con = sqlite3.connect('result.db')
        self.cur = self.con.cursor()
        self.create_table()

    def create_table(self):
        self.cur.execute(
            """
            CREATE TABLE IF NOT EXISTS stored_data(
                score VARCHAR(10),
                occupation VARCHAR(100),
                code VARCHAR(25)
            )
            """
        )

    def process_item(self, item, spider):
        self.cur.execute(
            "INSERT INTO stored_data VALUES (?,?,?)",
            (item['score'], item['occupation'], item['code'])
        )

        self.con.commit()
        return item
