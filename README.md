# sycharger

pip install pipenv
pipenv shell
pipenv install
create `budget` database and `budget` table with `sql/budget.sql`
change database access in constants.py

DB_HOST = "127.0.0.1"
DB_NAME = "budget"
DB_TABLE= "budget"
DB_USER = "iamcarion"
DB_PASS = "iamcarion"
DB_PORT = 3306

for launch run : python start.py
