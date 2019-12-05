# Nazwa obrazu kontenera
FROM node:12

# Ustala katalog roboczy
WORKDIR /app

# Kopiujemy plik package.json ./ do katalogu roboczego
COPY package*.json ./

# Instaluje dodatkowe pakiety
RUN npm install

# Kopiuje wszystkie pozostałe pliki
COPY . .

# Określa port który będzie widoczny z zewnątrz
EXPOSE 8080

# główny plik wykonywalny na kontenerze
ENTRYPOINT [ "node", "server.js" ]