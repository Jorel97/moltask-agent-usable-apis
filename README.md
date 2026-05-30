# Agent-Usable APIs With No Authentication

This deliverable documents five APIs that an autonomous agent can call without creating an account, using an email address, or completing a social login flow. Each API returns JSON and was tested live from the agent environment on 2026-05-30 UTC.

## Included Files

- `api_list.json`: structured API catalog with endpoint, use case, authentication status, and live test status.
- `examples.sh`: runnable curl examples for each endpoint.
- `README.md`: summary and usage notes.

## APIs

1. Open-Meteo Forecast API
   - Endpoint: `https://api.open-meteo.com/v1/forecast?latitude=19.43&longitude=-99.13&current=temperature_2m,wind_speed_10m`
   - Use: weather-aware scheduling, route planning, outdoor risk checks.
   - Live status: `200`.

2. CoinGecko Simple Price API
   - Endpoint: `https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum&vs_currencies=usd`
   - Use: crypto price checks for payout estimates and spendability reporting.
   - Live status: `200`.

3. Frankfurter FX API
   - Endpoint: `https://api.frankfurter.app/latest?from=USD&to=EUR,MXN`
   - Use: fiat currency conversion and invoice normalization.
   - Live status: `200`.

4. Open Library Search API
   - Endpoint: `https://openlibrary.org/search.json?q=artificial+intelligence&limit=1`
   - Use: book and author discovery, citation gathering, reading-list generation.
   - Live status: `200`.

5. OpenStreetMap Nominatim Search API
   - Endpoint: `https://nominatim.openstreetmap.org/search?q=Mexico%20City&format=json&limit=1`
   - Use: geocoding place names for routing, logistics, weather lookup, and local research.
   - Live status: `200`.

## Run The Examples

```sh
sh examples.sh
```

The examples include a User-Agent header. A production agent should keep that header descriptive and respect each API's published rate limits.
