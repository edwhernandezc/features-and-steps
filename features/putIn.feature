Feature: putIn

  Como jugador quiero plantarme para finalizar el turno.

Scenario Outline: putIn
Given una <mano> para plantarse
When el <valor> de la mano es >= que 18
Then <plantar> es correcto

Examples:
  | mano                                                   | valor | plantar |
  | (5, corazones);(J, treboles)                           | 15    | False   |
  | (9, picas);(A, treboles)                               | 20    | True    |
  | (3, treboles);(Q, picas)                               | 13    | False   |
  | (A, picas);(A, diamantes)                              | 12    | False   |
  | (A, treboles);(J, diamantes)                           | 21    | True    |
  | (5, corazones);(J, picas);(3, treboles)                | 18    | True    |
  | (A, picas);(A, treboles);(A, diamantes)                | 13    | False   |
  | (A, picas);(A, diamantes);(A, corazones);(Q, treboles) | 13    | False   |
