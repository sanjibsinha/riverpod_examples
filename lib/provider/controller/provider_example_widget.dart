import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'elevated_button_widget.dart';
import '../model/any_type_provider_model.dart';

class ProviderExampleWidget extends ConsumerWidget {
  const ProviderExampleWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final littleMonk = watch(classTypeProviderModel);
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Riverpod Provider example where we watch a String member variable'
            ' that we have passed through a class method.',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              littleMonk.littleMonk,
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              littleMonk
                  .fetchName('Now we can pass any data to change above data,'
                      ' and watch it!'),
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        ElevatedButtonWidget(),
      ],
    );
  }
}
