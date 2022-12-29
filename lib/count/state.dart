import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_study/store/state.dart';

class CountState implements Cloneable<CountState>, GlobalBaseState {
  late int count;

  @override
  CountState clone() {
    return CountState()
      ..count = count
      ..store = store;
  }

  @override
  StoreModel? store;
}

CountState initState(Map<String, dynamic> args) {
  return CountState()..count = 0;
}
