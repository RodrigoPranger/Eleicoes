# Projeto Eleições - Em andamento

Este é um projeto de BI completo (end-to-end) que utiliza dados das eleições disponibilizados pelo Tribunal Superior Eleitoral (TSE). O projeto foi proposto pela **Faculdade Impacta** na disciplina de **Business Intelligence**, onde os alunos tiveram a liberdade de escolher o tema. Resolvi escolher o tema das eleições devido à relevância do assunto no momento. O objetivo é extrair, transformar e carregar os dados eleitorais de forma automatizada, permitindo a exploração e análise detalhada para obtenção de insights. 

## Dados

Os dados utilizados neste projeto estão disponíveis no site do TSE em [dadosabertos.tse.jus.br](https://dadosabertos.tse.jus.br). O arquivo da **Documentação TSE** incluído neste repositório fornece uma visão detalhada sobre a estrutura e organização dos dados, facilitando o mapeamento das tabelas e dos campos relevantes.

## Estrutura do Projeto

### 1. Leitura e Mapeamento de Dados
- A primeira etapa consistiu na leitura da documentação oficial do TSE para entender a estrutura dos arquivos.
- A partir dessas informações, foi realizado o mapeamento das tabelas em **tabelas dimensão** e **tabelas fato**, formando o modelo dimensional.

### 2. Criação do Banco de Dados
- Este projeto utiliza **SQL Server** como Sistema de Gerenciamento de Banco de Dados (SGBD).
- Scripts SQL para a criação do banco de dados, schemas e tabelas fatos e de dimensões estão incluídos na pasta **Criação banco, fatos e dimensões**:
    - **Criação do banco e tabelas de dimensões**: define a estrutura e organização dos dados, incluindo as tabelas necessárias para armazenar dimensões.
    - **Tabela fato**: script específico para a criação da tabela fato, que armazena os dados das eleições.
      
## Modelo Dimensional

Abaixo está o diagrama que representa o modelo dimensional do projeto, com as tabelas de dimensões e a tabela fato:

![Diagrama do Modelo Dimensional](https://github.com/RodrigoPranger/Eleicoes/blob/main/Diagrama_Eleicoes.png)

### 3. Extração dos Dados
- Foi criado um script em **Python** para automatizar a extração dos dados eleitorais diretamente do site do TSE.
- O script realiza o download do arquivo CSV de votação (`votacao_candidato_munzona_2018_BRASIL.csv`), armazena o conteúdo em um **DataFrame** e em seguida carrega os dados no **SQL Server**.
- Os dados são inseridos em uma tabela de **staging** (`stg.TB_VOTACAO_CANDIDATO`), onde estão armazenados sem qualquer tratamento.
