import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/any_type_provider_model.dart';

void increment(BuildContext context) {
  context.read(stateProviderInteger).state += 1;
}

void changeName(BuildContext context) {
  context.read(stateProviderString).state = 'Name changed from John to Json!';
}

void clearName(BuildContext context) {
  context.read(stateProviderString).state = 'Back to John';
}

void changeLittleMonk(BuildContext context) {
  context.read(stateProviderClass).state =
      StateProviderModel('Now I am a big monk with white beard!');
}
