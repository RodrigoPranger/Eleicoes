import pandas as pd
import requests
import zipfile
import io
from sqlalchemy import create_engine

# URL do arquivo zip
url = "https://cdn.tse.jus.br/estatistica/sead/odsele/votacao_candidato_munzona/votacao_candidato_munzona_2024.zip"

# Fazendo o download do arquivo zip
response = requests.get(url)
if response.status_code == 200:
    # Extrair o arquivo zip
    with zipfile.ZipFile(io.BytesIO(response.content)) as z:
        # Abrindo o arquivo com informações consolidadas e carregando em um DataFrame
        df = pd.read_csv(z.open("votacao_candidato_munzona_2024_BRASIL.csv"), 
                         sep=';', encoding='latin1')#, header=1)
        
# Configurações de conexão com o SQL Server
server = 'RODRIGOPRANGER'  # Nome do servidor
database = 'DM_TSE_ELEICAO'  # Nome do banco de dados
driver = 'ODBC Driver 17 for SQL Server'  # Nome do driver

# String de conexão com o SQLAlchemy
conn_str = f"mssql+pyodbc://{server}/{database}?driver={driver}"

# Criando a conexão
engine = create_engine(conn_str)

# Inserindo o DataFrame na tabela existente
try:
    df.to_sql('TB_VOTACAO_CANDIDATO', con=engine, schema='stg', if_exists='append', index=False)
    print("Dados carregados com sucesso na tabela stg.TB_VOTACAO_CANDIDATO!")
except Exception as e:
    print(f"Erro ao carregar dados na tabela: {e}")