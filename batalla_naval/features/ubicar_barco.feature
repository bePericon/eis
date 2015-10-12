Feature: Ubicar barco
  Como usuario quiero ubicar mis barcos


  Scenario: Ubico mi barco exitosamente
  Given selecciono un barco 'crucero'
  When elijo la posicion 'a3' vacia
  Then el barco se ubica en esa posicion correctamente

  
  Scenario: No se puede ubicar un barco en una posición ya ocupada
  Given selecciono un barco 'crucero y luego un 'destructor'
  When elijo la posicion 'a3' para 'crucero' y lo ubico,ademas elijo la posicion 'b3' que esta ocupada
  Then el barco 'destructor' no se pudo ubicar en esa posicion


  Scenario: No puedo ubicar mi barco en una posición fuera del tablero
  Given selecciono un barco 'destructor' de nuevo
  When elijo la posicion 'k2' fuera del tablero
  Then no puedo ubicar el barco en esa posicion que esta fuera del tablero
