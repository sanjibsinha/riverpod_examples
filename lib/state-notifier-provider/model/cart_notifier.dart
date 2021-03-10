import 'package:flutter_riverpod/flutter_riverpod.dart';

class ClassOfItems {
  String items;
  ClassOfItems({this.items});
}

class CartNotifier extends StateNotifier<ClassOfItems> {
  CartNotifier() : super(ClassOfItems(items: 'First Item'));
  void addToCart(ClassOfItems items) {
    state = items;
  }
}

final itemNotifier = StateNotifierProvider<CartNotifier>((ref) {
  return CartNotifier();
});
