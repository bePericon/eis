Feature: Ubicar barco
  Como usuario quiero ubicar mis barcos


  Scenario: Ubico mi barco exitosamente
  Given selecciono un barco 'crucero'
  When ubico en la posicion 'a3' con orientacion horizontal el 'crucero'
  Then el barco se ubica en esa posicion correctamente porque esta vacia

  
  Scenario: No se puede ubicar un barco en una posición ya ocupada
  Given selecciono un barco 'crucero y luego un 'destructor'
  And ubico en la posicion 'a3' con orientacion vertical el 'crucero'
  When ubico en la posicion 'a3' con orientacion vertical el 'destructor'
  Then el barco 'destructor' no se pudo ubicar en esa posicion porque esta ocupada


  Scenario: No puedo ubicar mi barco en una posición fuera del tablero
  Given selecciono un barco 'destructor'
  When ubico en la posicion 'k2' con orientacion horizontal el 'destructor'
  Then no puedo ubicar el barco en esa posicion que esta fuera del tablero
