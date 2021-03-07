import 'package:flutter/material.dart';

class WatchNameAndCity extends StatelessWidget {
  const WatchNameAndCity({
    Key key,
    @required this.stateProviderNameObject,
    @required this.stateProviderCityObject,
  }) : super(key: key);

  final String stateProviderNameObject;
  final String stateProviderCityObject;

  @override
  Widget build(BuildContext context) {
    return Text(
      stateProviderNameObject + ' from ' + stateProviderCityObject,
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
