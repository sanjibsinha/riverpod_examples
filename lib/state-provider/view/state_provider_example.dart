import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/change_name_and_city.dart';
import '../controller/clear_name_and_city.dart';
import '../controller/counter_widget.dart';
import '../controller/raise_and_reduce_age_of_little_monk.dart';
import '../controller/watch_name_and_city.dart';
import '../model/any_type_provider_model.dart';

class StateProviderExample extends ConsumerWidget {
  const StateProviderExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final stateProviderIntegerObject = watch(stateProviderInteger).state;
    final stateProviderNameObject = watch(stateProviderName).state;
    final stateProviderCityObject = watch(stateProviderCity).state;
    final stateProviderInstance = watch(stateProviderClass).state;

    return Padding(
      padding: EdgeInsets.all(
        10.0,
      ),
      child: ListView(
        children: [
          Text(
            'Providers come in many variants, but they all work the same way.'
            ' Let us start with a simple counter then doing some more complex staff',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              8.0,
            ),
            child: CounterWidget(
                stateProviderIntegerObject: stateProviderIntegerObject),
          ),
          Space(),
          WatchNameAndCity(
              stateProviderNameObject: stateProviderNameObject,
              stateProviderCityObject: stateProviderCityObject),
          ChangeNameAndCity(),
          ClearNameAndCity(),
          Space(),
          Text(
            '${stateProviderInstance.littleMonk}.'
            ' I am now ${stateProviderInstance.ageOfLittleMonk} years old!',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          RaiseAndReduceAgeOfLittleMonk(),
        ],
      ),
    );
  }
}

class Space extends StatelessWidget {
  const Space({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.0,
    );
  }
}
