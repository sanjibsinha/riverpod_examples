import 'package:flutter/material.dart';
import 'useful_read_providers.dart';

class RaiseAndReduceAgeOfLittleMonk extends StatelessWidget {
  const RaiseAndReduceAgeOfLittleMonk({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        8.0,
      ),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () => changeLittleMonk(context),
            child: Text(
              'Grow Little Monk',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          const VerticalDivider(
            thickness: 2.0,
            color: Colors.red,
          ),
          ElevatedButton(
            onPressed: () => reverseAgeOfLittleMonk(context),
            child: Text(
              'Reverse Age of Little Monk',
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
