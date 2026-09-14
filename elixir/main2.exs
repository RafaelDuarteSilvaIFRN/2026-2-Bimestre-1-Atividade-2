defmodule Projeti do
  def saudar(nome, vezes) do
    for i <- 1..vezes do
      IO.puts("Olá, #{nome}! (mensagem #{i})")
    end
  end

  def main do
    task = Task.async(Projeti, :saudar, ["Maria", 3])
    Task.await(task)
  end
end

Projeti.main()
