import mysql
import mysql.connector


class CrawlerPipeline:
    def process_item(self, item, spider):
        return item


class ModificatedCrawlerPipeline:
    def __init__(self):
        self.con = mysql.connector.connect(
            host='localhost',
            user='root',
            passwd='1111',
            database='onet_code_db'
        )
        self.cur = self.con.cursor()
        self.create_table()

    def create_table(self):
        self.cur.execute("""DROP TABLE IF EXISTS stored_data_mod""")

        self.cur.execute(
            """
            CREATE TABLE stored_data_mod(
                id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                score VARCHAR(10),
                occupation VARCHAR(100),
                code VARCHAR(25),
                title VARCHAR(200),
                lay_titles VARCHAR(200),
                description VARCHAR(200),
                tasks VARCHAR(200),
                tasks_number VARCHAR(3),
                activities VARCHAR(200),
                activities_number VARCHAR(3)
            )
            """
        )

        self.cur.execute("""DROP PROCEDURE IF EXISTS remove_empty_table""")

        self.cur.execute(
            """
            CREATE PROCEDURE remove_empty_table()
            BEGIN
                SET @temp = (SELECT COUNT(*) FROM stored_data_mod);
                IF @temp = 0 THEN
                    DROP TABLE stored_data_mod;
                END IF;
            END
            """
        )

    def drop_table_if_empty(self):
        self.cur.execute("""CALL remove_empty_table()""")

    def process_item(self, item, spider):
        self.cur.execute(
            """
            INSERT INTO stored_data_mod(
                score, 
                occupation, 
                code, 
                title, 
                lay_titles, 
                description, 
                tasks, 
                tasks_number, 
                activities, 
                activities_number
            )
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            """,
            (
                item['score'],
                item['occupation'],
                item['code'],
                item['title'],
                item['lay_titles'],
                item['description'],
                item['tasks'],
                item['tasks_number'],
                item['activities'],
                item['activities_number']
            )
        )

        self.con.commit()

        return item
