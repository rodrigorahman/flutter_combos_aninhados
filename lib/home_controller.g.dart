// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$statesAtom = Atom(name: '_HomeControllerBase.states');

  @override
  List<StateModel> get states {
    _$statesAtom.context.enforceReadPolicy(_$statesAtom);
    _$statesAtom.reportObserved();
    return super.states;
  }

  @override
  set states(List<StateModel> value) {
    _$statesAtom.context.conditionallyRunInAction(() {
      super.states = value;
      _$statesAtom.reportChanged();
    }, _$statesAtom, name: '${_$statesAtom.name}_set');
  }

  final _$stateSelectedAtom = Atom(name: '_HomeControllerBase.stateSelected');

  @override
  StateModel get stateSelected {
    _$stateSelectedAtom.context.enforceReadPolicy(_$stateSelectedAtom);
    _$stateSelectedAtom.reportObserved();
    return super.stateSelected;
  }

  @override
  set stateSelected(StateModel value) {
    _$stateSelectedAtom.context.conditionallyRunInAction(() {
      super.stateSelected = value;
      _$stateSelectedAtom.reportChanged();
    }, _$stateSelectedAtom, name: '${_$stateSelectedAtom.name}_set');
  }

  final _$citySelectedAtom = Atom(name: '_HomeControllerBase.citySelected');

  @override
  CityModel get citySelected {
    _$citySelectedAtom.context.enforceReadPolicy(_$citySelectedAtom);
    _$citySelectedAtom.reportObserved();
    return super.citySelected;
  }

  @override
  set citySelected(CityModel value) {
    _$citySelectedAtom.context.conditionallyRunInAction(() {
      super.citySelected = value;
      _$citySelectedAtom.reportChanged();
    }, _$citySelectedAtom, name: '${_$citySelectedAtom.name}_set');
  }

  final _$loadingCitiesAtom = Atom(name: '_HomeControllerBase.loadingCities');

  @override
  bool get loadingCities {
    _$loadingCitiesAtom.context.enforceReadPolicy(_$loadingCitiesAtom);
    _$loadingCitiesAtom.reportObserved();
    return super.loadingCities;
  }

  @override
  set loadingCities(bool value) {
    _$loadingCitiesAtom.context.conditionallyRunInAction(() {
      super.loadingCities = value;
      _$loadingCitiesAtom.reportChanged();
    }, _$loadingCitiesAtom, name: '${_$loadingCitiesAtom.name}_set');
  }

  final _$findCitiesAsyncAction = AsyncAction('findCities');

  @override
  Future<void> findCities() {
    return _$findCitiesAsyncAction.run(() => super.findCities());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void selectState(StateModel stateSelected) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.selectState(stateSelected);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void findStates() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.findStates();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectCity(CityModel city) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.selectCity(city);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'states: ${states.toString()},stateSelected: ${stateSelected.toString()},citySelected: ${citySelected.toString()},loadingCities: ${loadingCities.toString()}';
    return '{$string}';
  }
}
