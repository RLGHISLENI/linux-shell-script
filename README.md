# Shell Script (Linux)
Utilização de shell script no linux demonstrando exemplos básicos.

#### Enunciado 1 – **Apresentação em 3 minutos** 
> Escrever a respeito de um problema, especificando-o. Este problema deve estar relacionado com alguma atividade ou procedimento necessário que possa ser resolvido com um script em Linux. O problema especificado não pode ser solucionado por nenhum dos programas presentes no material de apoio.

#### Escrever um script que resolva o problema apresentado no enunciado 1. 
O programa deve ter no mínimo: 
* 2 comandos **read**; 
* 2 comandos **if**; 
* 2 comandos **for**; 
* 1 saída que represente o **total de alguma coisa**; 
* 1 comando **PS** com sua saída na tela. 

#### Recursos 
- [x] Linux Lubuntu
- [x] Terminal
- [x] Nano (editor)

#### Coding
```
// Cria arquivos de script
$ touch script1.sh

// Conceder permissão completa ao script
$ chmod 777 script1.sh

// Abrir e editar o arquivo
$ nano script1.sh

// executar 
$ ./script1.sh
```

#### Detalhes sobre conceder permissão ao script 
```
// Permissão de execução e leitura apenas ao "proprietário"
$ chmod 500 script1.sh 

// Permissão de execução e leitura a todos os usuários
$ chmod 555 script1.sh

// Permissão de execução, leitura e escrita a todos os usuários
$ chmod 777 script1.sh

// Permissão de execução e leitura a "todos os "usuários" e permissão de escrita apenas ao "proprietário" do arquivo
$ chmod 755 script1.sh 

// Permissão de leitura ao "grupo" com permissão de execução apenas ao "proprietário
$ chmod 740 script1.sh

// Permissão de execução, leitura e escrita apenas ao "proprietário" arquivo
$ chmod 700 script1.sh
```

![Banana](http://cdn.osxdaily.com/wp-content/uploads/2013/07/dancing-banana.gif).
