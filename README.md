# Cálculo de Área e Volume de Terrenos e Culturas

Este projeto em R foi desenvolvido para calcular a área de terrenos e realizar análises de volumes de insumos para culturas agrícolas. O código lê dados de um arquivo CSV, processa-os e realiza cálculos estatísticos básicos, como média e desvio padrão.

## Funcionalidades

- Cálculo da área do terreno com base nas dimensões fornecidas.
- Verificação da correção da área fornecida.
- Cálculo da média e do desvio padrão para volumes de insumos.
  
## Como utilizar

### 1. Clonar o Repositório
Primeiro, você precisa clonar este repositório para sua máquina local. Abra o terminal e execute o comando:

```bash
git clone https://github.com/seu-usuario/nome-do-repositorio.git
```
### 2. Instalar o R e o RStudio
Certifique-se de ter o R instalado em sua máquina. Caso ainda não tenha, siga as instruções oficiais para instalar o [R](https://cran.r-project.org/) e o [RStudio](https://rstudio.com/), que facilita a execução e visualização de scripts em R.

### 3. Instalar os Pacotes Necessários
O código utiliza o pacote `dplyr` para manipulação de dados. Para instalar este pacote, abra o R ou o RStudio e execute o seguinte comando:

```r
install.packages("dplyr")
```

Se preferir, você pode utilizar o script `install_packages.R` incluído no repositório para instalar o pacote automaticamente. Execute o seguinte comando no R:

```r
source("install_packages.R")
```

### 4. Preparar o Arquivo CSV
Você precisará de um arquivo CSV contendo as propriedades e valores das medições do terreno e volumes de insumos.

Salve o arquivo como `saida_dados.csv` na pasta do projeto ou modifique o caminho do arquivo no script R para apontar para o local correto.

### 5. Executar o Script
Abra o RStudio e carregue o script principal. Em seguida, execute o script pressionando `Ctrl + Enter` ou utilizando o botão "Run" no RStudio.

### 6. Interpretar os Resultados
O script calculará a área do terreno e fará as seguintes verificações:

- Imprimirá a área calculada e a comparará com a área total fornecida.
- Informará se a área total fornecida está correta ou incorreta.
- Calculará e exibirá a média e o desvio padrão dos volumes de insumos.

Você verá a saída no console do RStudio. Exemplo de saída:

```r
Área calculada do terreno: 5000 m²
Área total fornecida: 5000 m²
A área total fornecida está correta.

  Media_Volume Desvio_Padrao_Volume
1         225                  75
```
