import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NameNotifier extends ChangeNotifier {
  final List<String> listOfNames = [];

  void addNames(String names) {
    listOfNames.add(names);
    notifyListeners();
  }
}

final nameChangeNotifier = ChangeNotifierProvider.autoDispose<NameNotifier>((ref) {
  return NameNotifier();
});

class HomeOfChangeNotifierProvider extends ConsumerWidget {
  const HomeOfChangeNotifierProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final nameChangeNotifierProvider = watch(nameChangeNotifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod Examples'),
      ),
      // body: ProviderExampleWidget(),
      // body: StateProviderExample(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Text(
                nameChangeNotifierProvider.listOfNames[index].toString(),
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
            itemCount: nameChangeNotifierProvider.listOfNames.length,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => nameChangeNotifierProvider.addNames('Now you can '
            'add as many names using ChangeNotifierProvider as you want!'),
        child: Icon(Icons.add),
      ),
    );
  }
}
