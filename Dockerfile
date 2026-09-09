FROM elixir:1.17
WORKDIR /app
COPY elixir/main.exs .
CMD ["elixir", "main.exs"]