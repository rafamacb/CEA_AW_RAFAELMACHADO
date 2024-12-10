# 1. Objetivo do projeto

Criar uma infrestrutura moderna de analytics para a Adventure Works, que permita à empresa tomar decisões de forma confiável e eficiente. Essa infraestrutura deverá ser capaz de:

1. Organizar e transformar os dados brutos em informações acessíveis e consistentes, utilizando um Data Warehouse moderno;
2. Responder às perguntas de negócio da área de vendas por meio de dashboards interativos;
3. Garantir a qualidade e veracidade dos dados, atendendo às expectativas de confiabilidade da diretoria;
4. Suportar a transição da empresa para uma cultura data-driven, com base no Modern Analytivs Stack.


# 2. Orçamento

Considerando as ferramentas sugeridas no desafio, é rezoável assumir um investimento moderado inicial para infraestutura e licenças, uma vez que serão utilizadas ferramentas, tal como, `Snowflake`, `dbt` e `Power BI`.

O orçamento também deverá considerar o tempo dos profissionais envolvidos, incluindo Gabriel Santos (Analista de TI), além de treinamentos ou consultorias, se for necessário.


# 3. Ferramentas

Ferramentas disponíveis:

* **`Draw IO`**: Para criação de modelo conceitual;
* **`Snowflake`**: Para criação e armazenamento do Data Warehouse;
* **`dbt Cloud`**: Para transformação e modelagem dos dados;
* **`Power BI`**: Para criar dashboard interativo;
* **`Github`**: Para versionamento de código.


# 4. Equipe:

Colaboradores responsáveis pelo desenvolvimento do projeto:

**`Gabriel Silva`**: Analista de TI responsável por garantir acesso aos dados.

**`Rafael Machado`**: Engenheiro de Analytcis responsável pelo desenvolvimento do projeto, tal como, modelagem, transformação dos dados e dashboards.


# 5. Usuários de negócio

Usuários responsáveis por fornecer informações referentes as regras de negócio.

**`Silvana Teixeira`**: Diretora comercial e principal fonte de informação sobre as necessidades e regras de negócio da área comercial, sendo necessário alinhar métricas e objetivos do dashboard com suas expectativas.

**`João Muller`**: Diretor de inovação e idealizador do projeto.


# 6. Patrocinadores

**`Carlos Silveira`**: CEO que é o principal patrocinador e que toma as decisões. Comprometido com a visão de tornar a Adventure Works uma empresa data-driven.

Exige garantia da qualidade e confiabilidade dos dados, pricipalmente para validar métrica de vendas brutas de 2011.

**`João Muller`**: Idealizador do projeto e aliado estratégico. Tem alto nível de decisão e poderá ajudar com possíveis resistências das área comercial.


# 7. Definição do Escopo do Projeto

O escopo delimita o que será entregue no projeto:

**`Objetivo Principal`**: Criar uma infraestrutura de analytics moderna para atender às perguntas de negócio da área de vendas.

**Entregáveis**:

1. Modelo conceitual do data warehouse, com tabelas de fatos e dimensões (`Draw IO`).
2. Configuração do data warehouse na nuvem (`Snowflake`).
3. Transformação de dados usando `dbt Cloud`, incluindo documentação e testes (source, primary keys e qualidade dos dados).
4. Dashboards interativos do `Power BI`.
5. Vídeo de apresentação demonstrando as etapas e resultados.

**Exclusões do Escopo**:

1. Integração de dados futuros (ex.: dados de CRM ou Web Analytics).
2. Processos que não pertencem a área de vendas.


# 8. Participação dos Patrocinadores e Equipe

É essencial reunir as principais partes interessadas para garantir alinhamento desde o início:

**Patrocinadores**:

**`Carlos Silveira (CEO)`**: Reforçar a visão estratégica do projeto e exigir garantia de qualidade nos dados.
**`João Muller (Diretor de Inovação)`**: Destacar o impacto do projeto e alinhar as expectativas com a diretoria.

**Equipe Técnica**:

**`Rafael Machado (Analytics Engineer)`**: Responsável por liderar o projeto e entregar as soluções técnicas.
**`Gabriel Santos (Analista de TI)`**: Suporte técnico e fornecimento de acesso aos dados.

**Usuários de Negócio**:

**`Silvana Teixeira (Diretora Comercial)`**: Fornecer informações sobre as regras de negócio e alinhar o escopo com as necessidades da área de vendas.


# 9. Identificação das Fontes de Dados Principais

Fontes de dados disponíveis:

**`ERP (SAP)`**: Dados de pedidos, vendas, produtos e clientes.
**`CRM (Salesforce)`**: Informações sobre interações com clientes (não essencial neste escopo inicial).
**`Bancos de Dados Transacionais (PostgreSQL)`**: Fonte dos dados principais do desafio, incluindo schemas de vendas, produção, recursos **humanos e compras.
**`Web Analytics (Google Analytics)`**: Dados futuros, fora do escopo atual.


# 10. Identificação das Fontes de Informação sobre o Negócio

Para entender as regras de negócio e alinhar as métricas às expectativas:

**Documentos e Dados Internos**:
    
1. Dicionário de dados fornecido no desafio.
2. Relatórios históricos de vendas e contabilidade.

**Fontes Humanas**:

**`Diretores`**: Detalhamento estratégico e validação do escopo.
**`Silvana Teixeira (Diretora Comercial)`**: Regras de negócio e validação das métricas.
**`Gabriel Santos (Analista de TI)`**: Estrutura dos dados e relacionamento entre tabelas.


# 11. Construção do Backlog de Tarefas

Construção do backlog das macroentregas:

| **Requisito** | **Entrega** | **Descrição** |
|-----------| ------- | --------- |
| **R01** | Planejamento Inicial | Reuniões com patrocinadores e equipe para revisão e validação do escopo.|
| **R02** | Modelagem do Data Warehouse | Criar o modelo conceitual de dimensões e fatos. Validar o modelo com as perguntas de negócio.|
| **R03** | Configuração do Ambiente | Configurar Snowflake e dbt Cloud, importar dados brutos no schema raw_adventure_works.|
| **R04** | Transformação de Dados | Criar tabelas de fatos e dimensões no dbt. Testar e documentar os modelos criados.|
| **R05** | Criação de Dashboards | Desenvolver visualizações interativas e validar com usuários de negócio.|
| **R06** | Apresentação e Entrega Final | Gravar vídeo demonstrando as etapas do projeto.|
| **R07** | Revisão para entrega do projeto | Revisar materiais e gerar o arquivo para envio.|


# 12. Importância do Projeto e os benefícios do patrocínio da Alta Gerência

O sucesso do projeto depende do apoio das lideranças. Por este motivo, deve ser reforçado:

**Benefícios Estratégicos**:

- A infraestrutura moderna de analytics posicionará a Adventure Works como uma empresa data-driven.
- Dashboards interativos darão maior visibilidade e controle à área de vendas.

**Compromisso da Liderança**:

- Carlos Silveira e João Muller devem apoiar ativamente o projeto, reforçando sua importância.
- A resistência da área comercial pode ser mitigada pelo patrocínio direto do CEO e do Diretor de Inovação.

**Impacto a Longo Prazo**:

- Melhor tomada de decisões com base em dados confiáveis.
- Melhoria contínua das operações comerciais.


# 13. Perguntas de Negócio e Métricas

As perguntas a serem respondidas:

| **Pergunta de Negócio**                                         | **Métricas Necessárias**                                             |
|---------------------------------------------------------------- |----------------------------------------------------------------------|
| Número de pedidos, quantidade comprada e valor total negociado. | Número de pedidos, Quantidade comprada, Valor total negociado.       |
| Produtos com maior ticket médio.                                | Ticket médio = (Faturamento bruto - descontos) / Número de pedidos.  |
| Melhores clientes por valor total negociado.                    | Valor total negociado por cliente.                                   |
| Melhores cidades por valor total negociado.                     | Valor total negociado por cidade.                                    |
| Número de pedidos por mês e ano.                                | Número de pedidos, Quantidade comprada, Valor total negociado.       |
| Produto com maior quantidade para motivo "Promotion".           | Quantidade comprada por produto.                                     |


# 14. Cronograma do Projeto

| **Requisito** | **Entrega** | **Prazo Início** | **Prazo Final** |
|---------------|------------ |------------------|-----------------|
| **R01** | Planejamento Inicial |  08/12/2024 | 11/12/2024 |
| **R02** | Modelagem do Data Warehouse | 12/12/2024 | 13/12/2024 |
| **R03** | Configuração do Ambiente | 14/12/2024 | 15/12/2024 |
| **R04** | Transformação de Dados | 16/12/2024 | 23/12/2024 |
| **R05** | Criação de Dashboards |  24/12/2024 | 31/12/2024 |
| **R06** | Apresentação e Entrega Final | 01/01/2025 | 02/01/2025 |
| **R07** | Revisão para entrega do projeto | 03/01/2025 | 04/01/2025 |

