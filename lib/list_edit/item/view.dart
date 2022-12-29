import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  print('title is ${state.title}');
  return InkWell(
    onTap: () {},
    child: ListTile(
      title: Text(state.title ??="空数据"),
      trailing: Checkbox(
        value: state.itemStatus ??= false,
        ///CheckBox的点击操作：状态变更
        onChanged: (value) {
          //单选模式,清除选中的item,以便做单选，不需要单选模式，注释掉清楚事件即可
          dispatch(ItemActionCreator.clear());

          //刷新选中item
          dispatch(ItemActionCreator.onChange(state.id!));
        }
      ),
    ),
  );
}
