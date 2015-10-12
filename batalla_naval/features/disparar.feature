Feature: Disparar
Como usuario quiero disparar a los barcos enemigos


Scenario: Disparo y toco agua
Given elijo posicion 'c3' que esta vacia
When  disparo a posicion elegida 'c3'
Then  la posicion 'c3' es 'agua'


Scenario: Disparo y toco un barco pero no lo hundo
Given elijo posicion 'a3' que esta ocupada
When  disparo a posicion elegida 'a3'
Then  hay un barco en esa posicion, recibe daño pero no se hunde

@wip
Scenario: Disparo y toco un barco y lo hundo
Given elijo posicion 'b4' a donde disparar
When  disparo a posicion elegida 'b4'
Then  hay un barco en esa posicion y se hunde
