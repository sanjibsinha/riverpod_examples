import 'package:flutter_riverpod/flutter_riverpod.dart';

class NameNotifier extends StateNotifier<String> {
  NameNotifier() : super('StateNotifier');

  void addNames(String names) {
    state = names;
  }

  void updateNames(String names) {
    state = names;
  }
}

final nameNotifierProvider = StateNotifierProvider<NameNotifier>((ref) {
  return NameNotifier();
});
