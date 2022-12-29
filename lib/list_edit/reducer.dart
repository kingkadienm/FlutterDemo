import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ListEditState> buildReducer() {
  return asReducer(
    <Object, Reducer<ListEditState>>{
      ListAction.updateItem: _updateItem,
    },
  );
}

ListEditState _updateItem(ListEditState state, Action action) {
  print('外层 reducer 数据 ${state.items}');
  return state.clone()..items = action.payload;
}
