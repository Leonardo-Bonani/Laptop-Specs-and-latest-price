# Análise de Dados usando SQL na plataforma Databricks
*Projeto de análise exploratória de dados usando a linguagem SQL em um conjunto de dados sobre preço e especificações de computadores (notebooks).*
<br>

Neste projeto foi usado uma base de dados do Kaggle com o nome de "Laptop Specs and latest price". Foi feita uma análise simples para
descobrir a média de preços praticados pelas pricipais marcas de notebooks e qual o tipo de memoria RAM mais participa das vendas de notebooks. 
<br>
Foi disponibilizado neste repositório um arquivo .txt onde encontra-se somente os codigos em linguagem SQL usados no projeto. Abaixo está o relatorio da ánalise.
<br><br>

## Análise Exploratória dos Dados
<br>

Primeiramente inicio a ánalise abrindo o dataset para entender como esta organizado os dados nele e se é preciso fazer a correção de alguns
campos (normatização). 


![Imagem 1](https://user-images.githubusercontent.com/126993350/231873645-bb9fe59a-c80a-4a01-b699-ff667a2404fe.png)
<br>


Após essa primeira análise foi observado que o valor dos produtos estava em *Rupias Indianas*, então seria necessario converter esses valores
para o *Real Brasileiro*. 

Usando a seguinte estrutura de códigos foi criado uma *view* da tabela e colocado nas ultimas colunas os valores corridos para a 
moeda brasileira. 

Também foi observado que a coluna de discontos estava usando os valores de porcentagem como números inteiros, para uma melhor visualização 
e boa prática foi adicionado uma coluna com os valores de porcentagem em decimais. 


![Imagem 2](https://user-images.githubusercontent.com/126993350/231877133-4622c3c0-b942-40f9-9386-59b081092aa9.png)
<br>


Então foi checado a *view* com as devidas correções. 


![Imagem 3](https://user-images.githubusercontent.com/126993350/231877144-3061d19e-9389-4ae5-82e3-227d54472b9b.png)
<br>

Para se obter a média do preço dos produtos de forma organizada foi utilizado o seguinte código, mas antes foi necessario fazer um ajuste usando 
o *"case when"* para que fosse corrigido valores de *strings* iguais mas que apareciam de forma diferente.


![Imagem 4](https://user-images.githubusercontent.com/126993350/231877162-7f9109e3-2ec9-4c31-a27a-2ae38059104b.png)
<br>

De acordo com a base de dados analisada as maiores medias de preços vem respectivamente de marcas como Alienware, Apple e MSI/Microsoft 
<br><br>

Em seguida foi analisado o a participação dos tipos de memorias nas vendas de notebooks, mas antes também foi necessário um ajuste 
para padronizar os valores das *strings*. 


![Imagem 5](https://user-images.githubusercontent.com/126993350/231877195-9db70a11-67b7-4c13-b0bc-5ce671ae13da.png)
<br>

Nessa análise ficou evidenciado que quase todo o faturamento vem das vendas de notebooks com memoria do tipo DDR3. 

