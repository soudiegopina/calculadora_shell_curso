#!/bin/bash

while true; do
    # Números de entrada do usuário
    echo "Digite o primeiro número:"
    read num1
    echo "Digite o segundo número:"
    read num2

    # Cálculos das operações
    soma=$((num1 + num2))
    subtracao=$((num1 - num2))
    multiplicacao=$((num1 * num2))

    # Resultados das operações
    echo "Soma: $soma"
    echo "Subtração: $subtracao"
    echo "Multiplicação: $multiplicacao"

    # Condicional para divisão, evitando divisão por zero
    if [ $num2 -ne 0 ]; then
        divisao=$((num1 / num2))
        echo "Divisão: $divisao"
    else
        echo "Erro: Não é possível dividir por zero."
    fi

    # Condicional para saber qual número é maior/menor
    if [ $num1 -gt $num2 ]; then
        echo "num1 é o maior número"
    elif [ $num1 -lt $num2 ]; then
        echo "num2 é o maior número"
    else
        echo "Os dois números são iguais"
    fi

    # Pergunta ao usuário se ele deseja parar
    echo "Deseja fazer outra operação? sim/não:"
    read continuar
    continuar=$(echo "$continuar" | tr '[:upper:]' '[:lower:]')  # Converte para minúsculas

    if [ "$continuar" != "sim" ]; then
        echo "Encerrando programa"
        break  # Encerra o loop se o usuário não quiser continuar
    fi
done


