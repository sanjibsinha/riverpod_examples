import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NameNotifier extends StateNotifier<List<String>> {
  NameNotifier() : super([]);
  void addNames(String names) {
    state = [...state, names];
  }

  void deleteNames(String names) {
    state = [
      for (final loopNames in state)
        if (names != loopNames) loopNames,
    ];
  }
}

final nameNotifierProvider = StateNotifierProvider<NameNotifier>((ref) {
  return NameNotifier();
});

class HomeStateNotifierProvider extends ConsumerWidget {
  const HomeStateNotifierProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final nameStateNotifierProvider = watch(nameNotifierProvider.state);
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
                nameStateNotifierProvider[index].toString(),
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
            itemCount: nameStateNotifierProvider.length,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            context.read(nameNotifierProvider).addNames('Now you can '
                'add as many names as you want!'),
        child: Icon(Icons.add),
      ),
    );
  }
}
