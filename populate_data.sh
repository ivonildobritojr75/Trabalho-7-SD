#!/bin/bash

# Criar 50 donos
for i in $(seq 1 50); do
  curl -s -X POST http://localhost:8080/api/customer/owners \
  -H "Content-Type: application/json" \
  -d '{"firstName":"Owner'"$i"'","lastName":"Test'"$i"'","address":"Street'"$i"'","city":"City'"$i"'","telephone":"123456"}' > /dev/null
done

echo "✅ Donos criados"

# Criar 1 pet para cada dono
for i in $(seq 1 50); do
  curl -s -X POST http://localhost:8080/api/customer/owners/"$i"/pets \
  -H "Content-Type: application/json" \
  -d '{"name":"Pet'"$i"'","birthDate":"2020-01-01","type":{"id":2,"name":"dog"}}' > /dev/null
done

echo "✅ Pets criados"

# Criar 1 visita para cada pet
for i in $(seq 1 50); do
  curl -s -X POST http://localhost:8080/api/visit/owners/"$i"/pets/"$i"/visits \
  -H "Content-Type: application/json" \
  -d '{"date":"2025-10-20","description":"Consulta de rotina"}' > /dev/null
done

echo "✅ Visitas criadas"
