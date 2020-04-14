import 'package:flutter_combos_aninhados/models/states_model.dart';

class StateRepository {
  
  List<StateModel> findAllStates() {
    return [
      StateModel(id: 'SP', name: 'São Paulo'),
      StateModel(id: 'MG', name: 'Minas Gerais'),
    ]; 
  }
}