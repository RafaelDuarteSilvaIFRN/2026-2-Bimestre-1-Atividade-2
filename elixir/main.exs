defmodule ThreadProgram do 

    def minha_funcao do 
        IO.puts("thread iniciada!")
        :timer.sleep(4000)
        IO.puts("Thread finalizada!") 
    end 

    def main do 
        pid = spawn(ThreadProgram, :minha_funcao, [])

        Process.monitor(pid)

        receive do 
            {:DOWN, _ref, :process, ^pid, _reason} ->
            IO.puts("programa principal finalizado!")
        end
    end
end 


ThreadProgram.main()
