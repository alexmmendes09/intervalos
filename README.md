# intervalos
Resolution for the 'intervalo' problem (http://dojopuzzles.com/problemas/exibe/intervalos/)

## Team

- Jonas Elan
- Igor Rafael

| Variável | Condição                                                    | Classe inválida        | Classe inválida              |
|----------|-------------------------------------------------------------|------------------------|------------------------------|
| Lista    | Lista não vazia                                             | Lista.size() > 0       | Lista.size() <= 0            |
|          | Todos os elementos são inteiros                             | Lista.each == integer  | unless Lista.each != integer |
|          | Lista deve estar ordenada                                   | Lista[i] < Lista[i+1]  | Lista[i] > Lista[i+1]        |
|          | A segunda lista deve conter dois elementos da primeira lista| Lista_2 subgroup Lista | Lista2 !subgroup Lista       |
