Feature: getValueHands

  Como repartidor quiero saber el valor de las manos para determinar quién gana.

Scenario Outline: Conocer el valor de la mano para determinar un ganador
Given <mano1> y <mano2> para determinar los valores
When los jugadores se plantan
Then el <valor1> y el <valor2> son correctos

Examples:
  | mano1                                    | mano2                                              | valor1 | valor2|
  |(5, picas);(J, treboles)                  |(9, corazones);(A, treboles)                        |15      |20     |
  |(3, diamantes);(Q, picas)                 |(A, picas);(A, treboles)                            |13      |12     |
  |(A, diamantes);(J, treboles)              |(5, picas);(J, treboles);(3, treboles)              |21      |18     |
  |(A, picas);(A, treboles);(A, diamantes)   |(A, picas);(A, treboles);(A, diamantes);(Q, picas)  |13      |13     |
