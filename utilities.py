import time
import pandas as pd
import mysql.connector
from constants import *


def get_connector():
    config = {
        'user': DB_USER,
        'password': DB_PASS,
        'host': DB_HOST,
        'port': DB_PORT,
        'database': DB_NAME,
        'raise_on_warnings': True
    }
    cnx = mysql.connector.connect(**config)
    return cnx


def get_data(source, filetype="csv"):
    if filetype == "csv":
        hs = pd.read_csv(source)
        df = pd.DataFrame(hs)
        return df
    elif filetype == "excel":
        h = pd.read_excel(source)
        df = pd.DataFrame(h)
        return df
    else:
        print("FILETYPE IS NOT RECOGNIZED...")
        return None


def build_sql_query(data):
    data = data.fillna(0)
    cols = ",".join([f'`{c}`' for c in data.columns.tolist()])
    query = "INSERT INTO `"+DB_TABLE+"` (" + cols + ") VALUES "
    nrow = data.shape[0]
    for index, row in data.iterrows():
        lrow = list(row)
        query += "(" + ",".join([f'"{r}"' if lrow.index(r) in [0, 1]
                                 else f'{r}' for r in lrow]) + ")" + ("," if index < nrow-1 else ";")
    return query


def load_data(data):
    result = {
        'success': False,
        'message': "",
    }
    base_error = "Error while loading data... : "
    try:
        cnx = get_connector()
        cursor = cnx.cursor()
        query = build_sql_query(data)
        cursor.execute(query)
        cnx.commit()
        cursor.close()

        result['success'] = True
        result['message'] = "Data loaded successfully..."
    except Exception as e:
        result['message'] = base_error + str(e)
    return result
