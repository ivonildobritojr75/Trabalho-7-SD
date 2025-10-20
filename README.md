## ⚙️ 1. Preparar o ambiente
bash
git clone https://github.com/spring-petclinic/spring-petclinic-microservices.git

cd spring-petclinic-microservices

docker compose up -d


## 🚀 2. Executar testes
bash
./run_leve.sh   # Cenário A - 50 usuários, 10min

./run_medio.sh  # Cenário B - 100 usuários, 10min

./run_pico.sh   # Cenário C - 200 usuários, 5min


## 📈 3. Resultados
Os CSVs são salvos na pasta `results/`.
Exemplo de resumo (planilha):

| Cenário | Usuários | Duração | Avg RT (ms) | Max RT (ms) | Req/s | Total reqs | Erros | % Sucesso |
|----------|-----------|----------|--------------|--------------|--------|-------------|--------|-------------|
| Leve     | 50        | 10 min   | 120          | 530          | 45.2   | 27.000      | 0      | 100%        |
| Médio    | 100       | 10 min   | 215          | 790          | 82.1   | 49.000      | 12     | 99.7%       |
| Pico     | 200       | 5 min    | 490          | 1400         | 95.5   | 28.600      | 320    | 98.8%       |

## 📂 Estrutura

spring-petclinic-benchmark/
├── locustfile.py
├── run_leve.sh
├── run_medio.sh
├── run_pico.sh
├── results/
│   └── resumo_planilha.xlsx
├── requirements.txt
└── README.md

### 👥​ Popular banco com dados:
bash
./populate_data.sh
