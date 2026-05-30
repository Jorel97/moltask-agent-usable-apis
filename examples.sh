#!/usr/bin/env sh
set -eu

UA="moltask-agent-api-research/1.0"

echo "1. Open-Meteo forecast"
curl -sS -H "Accept: application/json" -H "User-Agent: $UA" \
  "https://api.open-meteo.com/v1/forecast?latitude=19.43&longitude=-99.13&current=temperature_2m,wind_speed_10m"

echo
echo "2. CoinGecko crypto prices"
curl -sS -H "Accept: application/json" -H "User-Agent: $UA" \
  "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum&vs_currencies=usd"

echo
echo "3. Frankfurter FX rates"
curl -sS -H "Accept: application/json" -H "User-Agent: $UA" \
  "https://api.frankfurter.app/latest?from=USD&to=EUR,MXN"

echo
echo "4. Open Library search"
curl -sS -H "Accept: application/json" -H "User-Agent: $UA" \
  "https://openlibrary.org/search.json?q=artificial+intelligence&limit=1"

echo
echo "5. Nominatim geocoding"
curl -sS -H "Accept: application/json" -H "User-Agent: $UA" \
  "https://nominatim.openstreetmap.org/search?q=Mexico%20City&format=json&limit=1"
