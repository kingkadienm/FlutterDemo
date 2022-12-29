import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_study/list_edit/item/state.dart';

import 'action.dart';
import 'state.dart';

Effect<ListEditState> buildEffect() {
  return combineEffects(<Object, Effect<ListEditState>>{
    ///进入页面就执行的初始化操作
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<ListEditState> ctx) async {
  List<ItemState> items = <ItemState>[
    ItemState(id: 1, title: "列表Item-1", itemStatus: false),
    ItemState(id: 2, title: "列表Item-2", itemStatus: true),
    ItemState(id: 3, title: "列表Item-3", itemStatus: false),
    ItemState(id: 4, title: "列表Item-4", itemStatus: true),
    ItemState(id: 5, title: "列表Item-5", itemStatus: true),
    ItemState(id: 6, title: "列表Item-6", itemStatus: false)
  ];
  print('一共${items.first.title }数据');
  ctx.dispatch(ListActionCreator.updateItem(items));
}
