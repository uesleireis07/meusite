
while true; do
  echo "Selecione uma operação:"
  echo "1 Soma"
  echo "2 Subtração"
  echo "3 Multiplicação"
  echo "4 Divisão"
  echo "5 Raiz Quadrada"
  echo "6 Potência"
  echo "7 Sair"

  read -p "Digite a opção desejada (1-7): " opcao

  case $opcao in
    1)
      read -p "Digite um número: " num1
      read -p "Digite outro número: " num2
      resultado=$(echo "$num1 + $num2" | bc)
      echo "Resultado: $resultado"
      ;;
    2)
      read -p "Digite um número: " num1
      read -p "Digite outro número: " num2
      resultado=$(echo "$num1 - $num2" | bc)
      echo "Resultado: $resultado"
      ;;
    3)
      read -p "Digite um número: " num1
      read -p "Digite outro número: " num2
      resultado=$(echo "$num1 * $num2" | bc)
      echo "Resultado: $resultado"
      ;;
    4)
      read -p "Digite um número: " num1
      read -p "Digite outro número: " num2
      if [ $num2 -eq 0 ]; then
        echo "Erro: Divisão por zero!"
      else
        resultado=$(echo "scale=2; $num1 / $num2" | bc)
        echo "Resultado: $resultado"
      fi
      ;;
    5)
      read -p "Digite o número: " num1
      resultado=$(echo "scale=2; sqrt($num1)" | bc)
      echo "Resultado: $resultado"
      ;;
    6)
      read -p "Digite a base: " num1
      read -p "Digite o expoente: " num2
      resultado=$(echo "$num1 ^ $num2" | bc)
      echo "Resultado: $resultado"
      ;;
    7)
      echo "Saindo..."
      exit 0
      ;;
    *)
      echo "Opção inválida. Por favor, escolha uma opção válida (1-7)."
      ;;
  esac
done

