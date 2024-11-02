# Projeto Eleições - Em andamento

Este é um projeto de BI completo (end-to-end) que utiliza dados das eleições disponibilizados pelo Tribunal Superior Eleitoral (TSE). O objetivo é extrair, transformar e carregar os dados eleitorais em um Data Warehouse (DW) de forma automatizada, permitindo a exploração e análise detalhada para obtenção de insights. 

## Dados

Os dados utilizados neste projeto estão disponíveis no site do TSE em [dadosabertos.tse.jus.br](https://dadosabertos.tse.jus.br). O arquivo da **Documentação TSE** incluído neste repositório fornece uma visão detalhada sobre a estrutura e organização dos dados, facilitando o mapeamento das tabelas e dos campos relevantes.

## Estrutura do Projeto

### 1. Leitura e Mapeamento de Dados
- A primeira etapa consistiu na leitura da documentação oficial do TSE para entender a estrutura dos arquivos.
- A partir dessas informações, foi realizado o mapeamento das tabelas em **tabelas dimensão** e **tabelas fato**, formando o modelo dimensional.

### 2. Criação do Banco de Dados
- Scripts SQL para a criação do banco de dados, schemas e tabelas de dimensões estão incluídos no repositório:
    - **Criação do banco e tabelas de dimensões**: define a estrutura e organização dos dados, incluindo as tabelas necessárias para armazenar dimensões.
    - **Tabela fato**: script específico para a criação da tabela fato, que armazena os dados das eleições.

## Modelo Dimensional

Abaixo está o diagrama que representa o modelo dimensional do projeto, com as tabelas de dimensões e a tabela fato:

![Diagrama do Modelo Dimensional](https://github.com/RodrigoPranger/Eleicoes/blob/main/Diagrama_Eleicoes.png) 
