import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'state-notifier-provider/view/home_cart_notifier.dart';
import 'state-provider/view/state_provider_example.dart';

// import 'provider/controller/provider_example_widget.dart';

void main() {
  runApp(ProviderScope(child: App()));
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Home(),
      // home: HomeOfChangeNotifierProvider(),
      home: HomeCartNotifier(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod Examples'),
      ),
      // body: ProviderExampleWidget(),
      body: StateProviderExample(),
    );
  }
}
