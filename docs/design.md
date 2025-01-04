# 1. Entendimento dos Processos de Negócio e Métricas:
- Compreender como os processos operacionais da Adventure Works (AW) são realizados e como o sucesso é medido.  
- Avaliar quais KPIs (Key Performance Indicators) são utilizados para medir resultados de vendas, clientes, produtos e regiões.  

# **2. Análise das Fontes de Dados:**  
- Identificar todas as fontes de dados disponíveis na empresa que podem alimentar o data warehouse (DW).  
- As fontes de dados listadas incluem:  
  - **ERP (SAP)** – Dados operacionais e financeiros.  
  - **CRM (Salesforce)** – Informações sobre clientes e vendas.  
  - **Web Analytics (Google Analytics)** – Métricas do site e comportamento do cliente.  
  - **Site (WordPress)** – Dados do e-commerce e interações online.  


# **Acesso às Fontes de Dados:**  

# **1. Identificação das Fontes Necessárias:**  
- Reconhecer as tabelas e bancos de dados fundamentais para responder às perguntas de negócio.  
- Os dados estão distribuídos em **68 tabelas** de um banco de dados PostgreSQL, divididas em 5 schemas principais:  
  - **HR** (Recursos Humanos)  
  - **Sales** (Vendas)  
  - **Production** (Produção)  
  - **Purchasing** (Compras)  
  - **Raw_adventure_works** – Dados brutos para transformação.

- Será utilizado o schema **Raw_adventure_works** que se encontra no DW Snowflake da Incidium Academy.

# **2. Requisição de Acesso:**  
- Acessos forma fornecidos através da Inicium Academy.  
 
# Modelos

## **2.1 Modelo Relacional**

Através do modelo relacional, podemos identificar e avalizar com o modelo do banco de dados foi projetado originalmente:
![Modelo Relacional](img/ea_modelo_relacional.png)





