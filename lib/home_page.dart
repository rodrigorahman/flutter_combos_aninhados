import 'package:combos/combos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_combos_aninhados/home_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import 'models/city_model.dart';
import 'models/states_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller = HomeController();
  List<ReactionDisposer> disposers;
  @override
  void initState() {
    super.initState();
    controller.findStates();
    disposers ??= [
      reaction((_) => controller.stateSelected, (_) => controller.findCities()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (context) {
        return Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListCombo<StateModel>(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(controller.stateSelected?.id ?? 'Selecione um Estado'),
                ),
                getList: () => controller.states,
                onItemTapped: (StateModel value) {
                  controller.selectState(value);
                },
                itemBuilder: (_, parameters, item) {
                  return ListTile(title: Text(item.id));
                },
              ),
              SizedBox(
                height: 10,
              ),
              ListCombo<CityModel>(
                key: controller.cityKey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Visibility(
                    visible: !controller.loadingCities,
                    replacement: Center(
                      child: CircularProgressIndicator(),
                    ),
                    child: Text(controller.citySelected?.name ?? 'Selecione uma Cidade'),
                  ),
                ),
                getList: () => [],
                onItemTapped: (value) => controller.selectCity(value),
                itemBuilder: (_, parameters, item) {
                  return ListTile(title: Text(item.name));
                },
              ),
            ],
          ),
        );
      }),
    );
  }
}
