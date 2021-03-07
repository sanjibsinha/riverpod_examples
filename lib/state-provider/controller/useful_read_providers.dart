import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/any_type_provider_model.dart';

void increment(BuildContext context) {
  context.read(stateProviderInteger).state += 1;
}

void changeName(BuildContext context) {
  context.read(stateProviderName).state = 'Json!';
}

void changeCity(BuildContext context) {
  context.read(stateProviderCity).state = 'Jericho!';
}

void clearName(BuildContext context) {
  context.read(stateProviderName).state = 'John';
}

void clearCity(BuildContext context) {
  context.read(stateProviderCity).state = 'Chicago';
}

void changeLittleMonk(BuildContext context) {
  context.read(stateProviderClass).state =
      StateProviderModel('Now I am a big monk with white beard!', 70);
}

void reverseAgeOfLittleMonk(BuildContext context) {
  context.read(stateProviderClass).state =
      StateProviderModel('Now I am a little monk again!', 6);
}
