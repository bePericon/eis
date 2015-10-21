Feature: memoria de cantidad de operaciones

  Scenario: no hice operaciones
    Given voy a la pagina de la calculadora
    And selecciono la operacion sumar
    And no hice operaciones
    Then la cantidad de operaciones es 0
   
  Scenario: cuando hago operaciones la cantidad se incrementa
    Given voy a la pagina de la calculadora
    And selecciono la operacion sumar
    And hago una suma
    And vuelvo atras
    And selecciono la operacion restar
    And hago una resta
    Then la cantidad de operaciones es 2
 
  Scenario: cuando reseteo la cantidad de operaciones vuelve a cero
    Given voy a la pagina de la calculadora
    And selecciono la operacion sumar
    And hago una suma
    And vuelvo atras
    And selecciono la operacion restar
    And hago una resta
    And reseteo la memoria
    Then la cantidad de operaciones es 0