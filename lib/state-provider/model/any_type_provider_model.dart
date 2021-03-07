import 'package:flutter_riverpod/flutter_riverpod.dart';

final stateProviderInteger = StateProvider<int>((ref) {
  return 100;
});

/// As opposed to when using package:provider,
/// in Riverpod we can have two providers expose a state of the same "type":
///

final stateProviderName = StateProvider<String>((ref) {
  return 'John';
});
final stateProviderCity = StateProvider<String>((ref) {
  return 'Chicago';
});

class StateProviderModel {
  String _littleMonk = '';
  int _ageOfLittleMonk = 0;
  String get littleMonk => _littleMonk;
  int get ageOfLittleMonk => _ageOfLittleMonk;
  StateProviderModel(this._littleMonk, this._ageOfLittleMonk);
}

final stateProviderClass = StateProvider<StateProviderModel>((ref) {
  return new StateProviderModel('I am a Little Monk', 6);
});
