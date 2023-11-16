# RSS Feed Reader

## Overview
O RSS Feed Reader via linha de comando é um script em Ruby que 
busca e exibe conteúdo de feeds RSS dentro do terminal. Ele utiliza 
as bibliotecas `rss` e `open-uri` para recuperar e analisar os dados dos feeds RSS.


## Features
- Busca e analisa o conteúdo de feeds RSS.
- Exibe título, descrição e links para cada item do feed.
- Aceita URLs de feed RSS fornecidas pelo usuário para buscar e exibir conteúdo.


## Usage
1. Ao executar o script, o usuário é solicitado a inserir uma URL de feed RSS.
2. Insira uma URL de feed RSS válida quando solicitado.
3. O script busca e exibe o conteúdo do feed RSS fornecido no terminal.


## Code Structure
- `lib`: Diretório contento o arquivo principal do script.
- `Gemfile` e `Gemfile.lock`: Listam as dependências do projeto.

## Example RSS Feed URLs
- The New York Times (technology): https://rss.nytimes.com/services/xml/rss/nyt/Technology.xml
- NASA Breaking News: https://www.nasa.gov/rss/dyn/breaking_news.rss
