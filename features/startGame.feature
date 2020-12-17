Feature: startGame

  Como repartidor quiero entregar 2 cartas para iniciar el juego.

  Scenario Outline: repartir dos cartas para iniciar
    Given un <mazo> para jugar 21
    When el repartidor reparte una <carta1> y luego otra <carta2>
    Then la <mano> es correcta

    Examples:
      |carta1|carta2|mano|
      |5,corazones|J,picas|2 |
      |9,diamantes|A,corazones|2 |
      |3,corazones|Q,picas)|2|
      |A,treboles|A,corazones)|2 |
      |A,diamantes|J,treboles)|2 |
