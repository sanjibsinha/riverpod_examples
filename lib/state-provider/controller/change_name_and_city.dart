import 'package:flutter/material.dart';
import 'horizontal_space.dart';
import 'useful_read_providers.dart';

class ChangeNameAndCity extends StatelessWidget {
  const ChangeNameAndCity({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        8.0,
      ),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () => changeName(context),
            child: Text(
              'Change name',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          HorizontalSpace(),
          ElevatedButton(
            onPressed: () => changeCity(context),
            child: Text(
              'Change City',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
