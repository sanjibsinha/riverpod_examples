import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/cart_notifier.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key key,
    @required this.cartStateNotifierProvider,
  }) : super(key: key);

  final ClassOfItems cartStateNotifierProvider;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            cartStateNotifierProvider.items,
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(
            onPressed: () => context.read(itemNotifier).addToCart(
                  ClassOfItems(items: 'Added to cart'),
                ),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
