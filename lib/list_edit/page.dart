import 'package:fish_redux/fish_redux.dart';

import 'adapter.dart';
import 'state.dart';
import 'view.dart';
import 'effect.dart';
import 'reducer.dart';
class ListEditPage extends Page<ListEditState, Map<String, dynamic>> {
  ListEditPage()
      : super(
    initState: initState,
    // effect: buildEffect(),
    // reducer: buildReducer(),
    view: buildView,
    dependencies: Dependencies<ListEditState>(
        adapter: NoneConn<ListEditState>() + ListItemAdapter(),
        slots: <String, Dependent<ListEditState>>{}),
    middleware: <Middleware<ListEditState>>[],
  );
}
