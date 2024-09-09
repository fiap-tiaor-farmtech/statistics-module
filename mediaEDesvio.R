# Instalação e carregamento dos pacotes necessários
# install.packages("dplyr")
library(dplyr)

# Definir o caminho do arquivo CSV
file_path <- "saida_dados.csv"

# Ler o arquivo CSV com o delimitador correto
dados <- read.csv(file_path, sep = ";", stringsAsFactors = FALSE)

# Ajustar o nome das colunas para Propriedade e Valor
colnames(dados) <- c("Propriedade", "Valor")

# Formatação: Limpa os espaços extras e caracteres indesejados antes da conversão
dados$Valor <- gsub("[^0-9,.]", "", dados$Valor) # Remove caracteres não numéricos
dados$Valor <- gsub(",", ".", dados$Valor) # Substitui ',' por '.'
dados$Valor <- as.numeric(dados$Valor) # Converte para numérico

# Verificar se a conversão foi bem-sucedida
# print(dados)

# Calcula e confirma a área total do terreno
largura <- dados$Valor[dados$Propriedade == "largura do terreno (m)"]
comprimento <- dados$Valor[dados$Propriedade == "comprimento do terreno (m)"]

if (length(largura) == 1 & length(comprimento) == 1) {
  area_calculada <- largura * comprimento
  area_total <- dados$Valor[dados$Propriedade == "area total (m2)"]
  
  cat("Área calculada do terreno:", area_calculada, "m²\n")
  cat("Área total fornecida:", area_total, "m²\n")
  if (abs(area_calculada - area_total) < 1e-2) {
    cat("A área total fornecida está correta.\n")
  } else {
    cat("A área total fornecida está incorreta.\n")
  }
} else {
  cat("Não foi possível calcular a área total. Verifique os dados fornecidos.\n")
}

# Filtrando, deixando apenas as linhas que contêm informações necessárias para o cálculo de volume
dados_numericos <- dados %>%
  filter(Propriedade %in% c("volume por fileira (litros)", "volume total necessario (litros)"))

# Verifica se os dados foram filtrados corretamente
# print(dados_numericos)

# Calcular a média e o desvio padrão para os volumes
resultados <- dados_numericos %>%
  summarise(
    Media_Volume = mean(Valor, na.rm = TRUE),
    Desvio_Padrao_Volume = sd(Valor, na.rm = TRUE)
  )

# Exibir os resultados
print(resultados)