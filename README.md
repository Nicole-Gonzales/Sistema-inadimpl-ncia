# Sistema-inadimplencia
Como usar SQL para transformar dados em decisões estratégicas no setor financeiro? 📊💳

Identificar padrões de risco com rapidez é um dos maiores desafios de qualquer instituição financeira. Recentemente, trabalhei no desenvolvimento de um projeto focado exatamente nessa dor.

O Desafio:
O banco precisava mapear clientes com maior risco de inadimplência e analisar o comportamento dos pagamentos atrasados de forma ágil e centralizada.

A Solução Técnica:
Desenvolvi a modelagem e a estrutura de um banco de dados relacional em MySQL, integrando entidades de clientes, contas correntes, contratos de empréstimos e histórico de pagamentos.

A partir dessa estrutura bem normalizada, foi possível criar queries analíticas (como consultas com JOIN, agregações e filtros de status) para:

Cruzar rapidamente os dados cadastrais com o histórico de crédito;

Isolar clientes em atraso e calcular o volume financeiro inadimplente;

Gerar insumos para relatórios analíticos e tomadas de decisão na esteira de cobrança e concessão.

O código da foto mostra uma consulta simples, mas fundamental: a junção de clientes aos seus contratos para filtragem de contratos com status 'Inadimplente'.

Projeto prático que reforça o poder do SQL na resolução de problemas reais de negócios e análise de dados!
