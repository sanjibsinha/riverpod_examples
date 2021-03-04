import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/useful_read_providers.dart';

import '../model/any_type_provider_model.dart';

class StateProviderExample extends ConsumerWidget {
  const StateProviderExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final stateProviderObject = watch(stateProviderInteger).state;
    final stateProviderStringObject = watch(stateProviderString).state;
    final stateProviderInstance = watch(stateProviderClass).state;

    return Padding(
      padding: EdgeInsets.all(
        10.0,
      ),
      child: Center(
        child: Column(
          children: [
            Text(
              '${stateProviderObject.toString()}',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            FloatingActionButton(
              onPressed: () => increment(context),
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              stateProviderStringObject,
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            ElevatedButton(
              onPressed: () => changeName(context),
              child: Text(
                'Change name',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () => clearName(context),
              child: Text(
                'Back to Previous',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              stateProviderInstance.littleMonk,
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () => changeLittleMonk(context),
              child: Text(
                'Grow Little Monk',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
