import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderModel extends ChangeNotifier {
  String _littleMonk = 'I am any String data!';
  String get littleMonk => _littleMonk;

  String fetchName(String str) {
    _littleMonk = str;
    return _littleMonk;
  }

  void changeName() {
    _littleMonk = 'Now I am Little Monk';
    notifyListeners();
  }
}

final classTypeProviderModel = Provider<ProviderModel>((ref) {
  return ProviderModel();
});
