import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_study/jump/second/state.dart';

import 'action.dart';
import 'state.dart';

Reducer<FirstState> buildReducer() {
  return asReducer(
    <Object, Reducer<FirstState>>{
      FirstAction.updateMsg: _updateMsg,
    },
  );
}

FirstState _updateMsg(FirstState state, Action action) {
  return state.clone()
    ..msg = action.payload;
}
