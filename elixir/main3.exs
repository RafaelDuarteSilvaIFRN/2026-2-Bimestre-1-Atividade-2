defmodule Projeto do
  def trabalhador(numero, tempo_trabalho) do
    IO.puts("Trabalhador #{numero} começou")
    Process.sleep(tempo_trabalho * 1000)
    IO.puts("Trabalhador #{numero} terminou (levou #{tempo_trabalho}s)")
  end

  def main do
    IO.puts("Iniciando 5 trabalhadores...")
    inicio = System.monotonic_time(:millisecond)

    threads =
      for i <- 0..4 do
        Task.async(fn -> trabalhador(i, 2) end)
      end

    for thread <- threads do
      Task.await(thread)
    end

    fim = System.monotonic_time(:millisecond)
    tempo_total = (fim - inicio) / 1000.0

    IO.puts("\nTodos os trabalhadores terminaram!")
    IO.puts("Tempo total: #{:erlang.float_to_binary(tempo_total, decimals: 2)}s")
    IO.puts("(Se fosse sequencial, levaria ~10s)")
  end
end

Projeto.main()
