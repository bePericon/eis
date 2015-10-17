@wip
Feature: memoria de cantidad de operaciones

  Scenario: no hice operaciones
    Given no hice operaciones
    Then la cantidad de operaiones es 0

  Scenario: cuando hago operaciones la cantidad de incrementa
    Given hago una suma
    And hago una resta
    Then la cantidad de operaiones es 2

  Scenario: cuando reseteo la cantidad de operaciones vuelve a cero
    Given hago una suma
    And hago una resta
    And reseteo la memoria
    Then la cantidad de operaiones es 0