# Jornada-de-Dados---Projeto-3 
<img alt="SQL" src="https://img.shields.io/badge/SQL-000000?style=for-the-badge&logo=sql&logoColor=white" />

📊Num cenário financeiro de queda nas taxas de juros, o banco Super Caja observou um aumento expressivo na demanda por crédito. Esse crescimento sobrecarregou a equipe de análise, que ainda opera de forma manual, impactando a agilidade e a precisão nas decisões.
Para enfrentar esse desafio, propõe-se a automação do processo de análise de crédito com base em técnicas avançadas de análise de dados. O projeto visa identificar o perfil de clientes com risco de inadimplência, calcular o risco relativo e classificar clientes em diferentes categorias de risco, permitindo decisões mais assertivas e redução de perdas financeiras.
Durante o desenvolvimento, foram explorados conceitos fundamentais como risco relativo, classificação de clientes, matriz de confusão e consultas complexas no BigQuery, fortalecendo o modelo analítico e aprimorando a compreensão sobre padrões de inadimplência.

🎯 Objetivos:
Automatizar o processo de análise de crédito para aumentar eficiência e precisão.
Identificar perfis de clientes com maior risco de inadimplência.
Aplicar o conceito de risco relativo para comparar grupos expostos e não expostos.
Utilizar a matriz de confusão para validar a precisão do modelo.
Classificar clientes e futuros clientes em categorias de risco.
Apoiar decisões estratégicas e sustentáveis no processo de concessão de crédito.

🛠️ Ferramentas Utilizadas: 
Google BigQuery (SQL): data warehouse para processar grandes volumes de dados e executar consultas SQL avançadas.

Google Looker Studio: criação e edição de dashboards e relatórios interativos.

Google Sheets: organização e manipulação de dados em planilhas.

🧩Descrição dos Dados:
O conjunto de dados reúne informações sobre empréstimos de clientes do banco, distribuídas em quatro tabelas principais:
  user_info: dados pessoais do cliente (ID, idade, gênero, salário, dependentes).
  loans_outstanding: empréstimos concedidos (ID do empréstimo, ID do cliente, tipo de empréstimo).
  loans_detail: comportamento de pagamento (atrasos, uso de crédito sem garantia, relação dívida/ativos).
  default: histórico de inadimplência (ID do cliente, indicador de inadimplência).


🛠️Processo Analítico Limpeza e preparação: 
Limpeza de dados: remoção de nulos, duplicados e valores discrepantes.
Criação de variáveis: faixa salarial, score de idade, dívida, dependentes, quantidade de empréstimos, atrasos.
Consolidação: união das tabelas via JOINs.
Análise exploratória: histogramas, medidas de tendência central e dispersão, quartis, correlações

📌Resultados & Insights:
A análise de risco relativo permitiu identificar perfis de clientes com maior ou menor propensão à inadimplência, consolidando essas informações no score_final, composto por seis variáveis-chave.

Bons pagadores:
Idade: acima de 40 anos (quartil 4).
Renda: salários superiores a R$ 10.000.
Dependentes: 0 a 1 dependente.
Empréstimos ativos: 0 ou 1 empréstimo.
Histórico de atraso: nenhum registro de atraso.

Maus pagadores:
Idade: até 26 anos (quartil 1), risco 6,5x maior.
Renda: até R$ 4.000, maior inadimplência.
Dívida: grupos com dívidas médias altas apresentam risco acima da média.
Dependentes: mais de 3, comprometendo a renda.
Empréstimos ativos: maior número aumenta risco em até 3x.
Atrasos 30–59 dias: principal preditor, com taxa de inadimplência de 7% (20x maior que outros grupos).

📈Conclusões e Recomendações: 
O score_final permite classificar clientes em diferentes níveis de risco, oferecendo suporte para decisões de crédito mais assertivas.

🔗Links Externos:
Notion – Planejamento e Documentação do Projeto: https://www.notion.so/Projeto-3-20916db9dd868046bb24ca7f8d94d891?source=copy_link
Documentação no Google Docs: https://docs.google.com/document/d/1JLUOxJuXkdD-zzuPTt9ZPkUUSY-N9Ib3mnyPic7LXX8/edit?usp=sharing
Base de Dados no Google Sheets: https://drive.google.com/drive/folders/1QoOgnSDpoThvw_6gmFqlA0XB9bu4RgGf?usp=sharing
Apresentação no Canva: https://www.canva.com/design/DAGupRr46G0/r0Q_hDIhoWQ94s5xTs1vvQ/edit?utm_content=DAGupRr46G0&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton
