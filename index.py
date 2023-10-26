import streamlit as st
import pandas as pd

from utilities import *


st.title('SYCHARGER : INTERFACE DE CHARGEMENT DE DONNEES')

fichier = st.file_uploader("Choisir un fichier EXCEL", type=["xlsx", "xls"])


if fichier is not None:

    details = {"filename":fichier.name, "filetype":fichier.type, "filesize":fichier.size}
    st.write(details)
    
    start = time.time()

    data = get_data(fichier, filetype="excel")
    st.write(data.head())
    
    rload = load_data(data)
    
    end = time.time()
    
    execution_time = end - start
    if rload['success']:
        st.write(rload['message'] + " in " + str(execution_time) + " seconds")
    else:
        st.write(rload['message'])