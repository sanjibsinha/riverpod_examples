import 'package:flutter_riverpod/flutter_riverpod.dart';

final stateProviderInteger = StateProvider<int>((ref) {
  return 100;
});
final stateProviderString = StateProvider<String>((ref) {
  return 'John';
});

class StateProviderModel {
  String _littleMonk = '';
  String get littleMonk => _littleMonk;
  StateProviderModel(this._littleMonk);
}

final stateProviderClass = StateProvider<StateProviderModel>((ref) {
  return new StateProviderModel('I am a Little Monk');
});
