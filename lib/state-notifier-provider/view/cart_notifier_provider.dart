import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/body_widget.dart';
import '../model/cart_notifier.dart';

class CartNotifierProvider extends ConsumerWidget {
  const CartNotifierProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final cartStateNotifierProvider = watch(itemNotifier.state);
    return BodyWidget(cartStateNotifierProvider: cartStateNotifierProvider);
  }
}
