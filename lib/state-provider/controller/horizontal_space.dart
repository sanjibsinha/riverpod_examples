import 'package:flutter/material.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const VerticalDivider(
      thickness: 2.0,
      color: Colors.red,
    );
  }
}
