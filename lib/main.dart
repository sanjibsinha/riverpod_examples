import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'state-provider/view/state_provider_home.dart';
//import 'change-notifier-provider/change_notifier_provider.dart';
//import 'state-notifier-provider/view/home_cart_notifier.dart';
//import 'state-provider/view/state_provider_example.dart';

// import 'provider/controller/provider_example_widget.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Home(),
      // home: HomeOfChangeNotifierProvider(),
      // home: HomeCartNotifier(),
    );
  }
}
