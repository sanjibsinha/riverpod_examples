import 'package:flutter/material.dart';
import 'useful_read_providers.dart';
import 'horizontal_space.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    Key key,
    @required this.stateProviderIntegerObject,
  }) : super(key: key);

  final int stateProviderIntegerObject;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${stateProviderIntegerObject.toString()}',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        HorizontalSpace(),
        FloatingActionButton(
          onPressed: () => increment(context),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        HorizontalSpace(),
        Container(
          padding: EdgeInsets.all(
            8.0,
          ),
          child: Text(
            'Clicking the button \n will increase \n the number by 1',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
