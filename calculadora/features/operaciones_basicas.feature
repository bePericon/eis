Feature: Operaciones basicas

  Scenario: suma
    Given un operando es 1
    And otro operando es 2
    When los sumo
    Then el resultado es 3

  Scenario: resta
    Given un primer operando que es 2
    And un segundo operando que es 1
    When resto el primero operando por el segundo
    Then el resultado es 1
  @wip
  Scenario: multiplicacion
    Given un primer operando que es 2
    And un segundo operando que es 2
    When los multiplico entre si
    Then el resultado es 4
  @wip
  Scenario: division
    Given un primer operando que es 4
    And un segundo operando que es 2
    When divido el primer operando por el segundo
    Then el resultado es 2
