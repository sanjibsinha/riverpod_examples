import 'package:flutter/material.dart';
import 'state_notifier_provider.dart';
import 'cart_notifier_provider.dart';

class HomeCartNotifier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod Examples'),
      ),
      body: AnExpensiveWidget(),
    );
  }
}

class AnExpensiveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        10.0,
      ),
      child: ListView(
        children: [
          Text(
            'We can place any expensive widget tree here!',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'One example of State Notifier Provider'
            ' can be placed here',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 10.0,
          ),
          HomeStateNotifierProvider(),
          // HomeStateNotifierProvider(),
          Text(
            'Another example of State Notifier Provider'
            ' given below!',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 10.0,
          ),
          CartNotifierProvider(),
        ],
      ),
    );
  }
}
