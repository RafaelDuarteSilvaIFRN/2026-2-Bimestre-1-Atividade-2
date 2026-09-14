# Relatório de implementação de linha de execução em Elixir

## Introdução

Este relato faz parte do processo avaliativo da disciplina de sistemas operacionas no curso superior em análise e desenvolvimento de sistemas, ofertado na Diretoria acadêmica de gestão e tecnologia da informação no campus natal-central do instituto federal de educação, ciência e tecnologia do rio grande do norte.

Tem como objetivo principal relatar como implementar linhas de execução na linguagem Elixir.

O grupo de trabalho foi formado por
-> Rafael 
-> Hudson
-> Daniel 

## Implementando múltiplas linhas de execução em FIXME

### Informações gerais sobre o Elixir

O Elixir é uma linguagem de programação funcional, criada com foco em aplicações concorrentes e distribuídas. Ela utiliza a máquina virtual BEAM, a mesma utilizada pelo Erlang, permitindo trabalhar com vários processos de forma eficiente. A linguagem é utilizada principalmente em aplicações web, sistemas distribuídos e serviços que precisam lidar com muitas tarefas simultaneamente, e pode ser utilizada em diferentes sistemas operacionais, como Windows, Linux e macOS.

### Criando linhas de execução

Para criar uma linha de execução no Elixir, foi utilizado o spawn, que cria um novo processo e retorna um PID para identificá-lo. Nesse processo, foi executada uma função responsável pela tarefa, utilizando também :timer.sleep para simular um tempo de execução. Para acompanhar quando o processo terminava, foi utilizado Process.monitor junto com receive, que permite aguardar a mensagem enviada quando o processo é encerrado.

### Passando valores para linhas de execução

Para passar valores para uma linha de execução, os argumentos da função são colocados em uma lista no momento da utilização do spawn. No exercício, foram passados o número do trabalhador e o tempo de trabalho, permitindo que cada processo recebesse seus próprios valores. Dessa forma, foi possível executar a mesma função utilizando informações diferentes em cada processo.

### Múltiplas linhas de execução

Na atividade, foram criados cinco processos utilizando um for, fazendo com que cada trabalhador executasse sua tarefa de forma concorrente. Todos os processos receberam um tempo de execução de dois segundos e foram monitorados para que o programa principal pudesse aguardar o término de todos. Com isso, o tempo total de execução ficou próximo de dois segundos, enquanto uma execução sequencial dos cinco trabalhadores levaria aproximadamente dez segundos.

## Considerações finais

A atividade permitiu compreender como o Elixir trabalha com processos e concorrência, além de possibilitar a comparação com o exemplo desenvolvido anteriormente em Python. Foi possível aprender a utilizar spawn, PID, Process.monitor e receive, além de entender como passar valores para os processos e executar várias tarefas simultaneamente.
