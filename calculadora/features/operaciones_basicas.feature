Feature: Operaciones basicas

  Scenario: suma
    Given voy a la pagina de la calculadora
    And selecciono la operacion sumar
    And un primer operando que es 1
    And un segundo operando que es 2
    When los sumo
    Then el resultado es 3

  Scenario: resta
    Given voy a la pagina de la calculadora
    And selecciono la operacion restar
    And un primer operando que es 2
    And un segundo operando que es 1
    When resto el primero operando por el segundo
    Then el resultado es 1

  Scenario: promedio
    Given voy a la pagina de la calculadora
    And selecciono la operacion promedio
    And un operando es 6
    And otro operando es 8
    When saco el promedio entre ellos
    Then el resultado es 7