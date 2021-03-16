import 'package:flutter/material.dart';
import 'state_provider_example.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod Examples'),
      ),
      // body: ProviderExampleWidget(),
      body: const StateProviderHome(),
    );
  }
}

class StateProviderHome extends StatelessWidget {
  const StateProviderHome({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const StateProviderExample();
  }
}