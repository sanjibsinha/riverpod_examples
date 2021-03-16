import 'package:flutter/material.dart';
import 'state_notifier_provider.dart';
import 'cart_notifier_provider.dart';

class HomeCartNotifier extends StatelessWidget {
  const HomeCartNotifier({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod Examples'),
      ),
      body: const AnExpensiveWidget(),
    );
  }
}

class AnExpensiveWidget extends StatelessWidget {
  const AnExpensiveWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        10.0,
      ),
      child: ListView(
        children: [
          const Text(
            'We can place any expensive widget tree here!',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'One example of State Notifier Provider'
            ' can be placed here',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          HomeStateNotifierProvider(),
          // HomeStateNotifierProvider(),
          const Text(
            'Another example of State Notifier Provider'
            ' given below!',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          CartNotifierProvider(),
        ],
      ),
    );
  }
}
