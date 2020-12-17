Feature: askCard

  Como jugador quiero solicitar una carta adicional para seguir jugando.

Scenario Outline: solicitar carta
  Given una <mano> para solicitar carta
  When el <valor> de la mano es < que 18
  Then <nuevaCantidad> generada está bien

  Examples:
    | mano                                                | valor|cantidaActual|nuevaCantidad|
    | (5, picas);(J, treboles)                            | 15   |2            |3            |
    | (9, corazones);(A, treboles)                        | 20   |2            |2            |
    | (3, diamantes);(Q, picas)                           | 13   |2            |3            |
    | (A, picas);(A, treboles)                            | 12   |2            |3            |
    | (A, diamantes);(J, treboles)                        | 21   |2            |2            |
    | (5, picas);(J, treboles);(3, treboles)              | 18   |3            |3            |
    | (A, picas);(A, treboles);(A, diamantes)             | 13   |3            |4            |
    | (A, picas);(A, treboles);(A, diamantes);(Q, picas)  | 13   |4            |5            |
