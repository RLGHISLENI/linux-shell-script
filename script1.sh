#!/bin/bash
Menu() {
  clear
  echo "Cadastro de Alunos"
  echo "------------------"
  echo "Opções:"
  echo
  echo "1. Inserir Aluno"
  echo "2. Listar Alunos"
  echo "3. Memoria"
  echo "4. Sair"
  echo
  echo -n "Informe a opção desejada: "
  read opcao
  case $opcao in
    1) Inserir ;;
    2) Listar ;;
    3) Memoria ;;
    4) echo "Tchau" ; exit ;;
    *) echo "Opção desconhecida." ; read ; Menu ;;
  esac
}

Inserir() {
  clear
  echo "Informe os dados do Aluno:"
  echo
  read -p "Nome   : " nome
  read -p "E-mail : " mail

  [ "$nome" ] || { echo "ERRO: Nome deve ser informado!"; read; }
  [ "$mail" ] || { echo "ERRO: E-mail deve ser informado!"; read; }

   if [ -n "$nome" ] && [ -n "$mail" ]; then
    echo
    read -p "Deseja gerar um arquivo (s/n)? "
    if [ "$REPLY" = "s" ]; then
      echo "$nome($mail)" >> alunos.txt
      echo
      echo "Dados armazendos em alunos.txt"
      Voltar
    fi
  fi
  Menu
}

Memoria() {
  clear
  echo "Meu processo rodando:"
  echo
  ps -C script1.sh
  read
  echo "Consumo de memoria do SO:"
  echo
  ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head
  Voltar
}

Listar() {
  clear
  echo "Listagem de alunos:"
  echo
  rows=0
  for row in $(cat alunos.txt); do
    rows=$(($rows+1))
    echo $row;
    chars=0
    for ((i=0; i<${#row}; i++)); do
      chars=$(($chars+1))
    done
    echo " -> $chars caracteres"
  done
  echo
  echo "Total de Alunos: $rows"
  Voltar
}

Voltar() {
  echo
  echo "<Enter> para voltar!" 
  read
  Menu
}

Menu
