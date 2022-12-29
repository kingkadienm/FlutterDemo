import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ListState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text("ListPage"),
      backgroundColor: state.store?.themeColor,
    ),
    body: _itemWidget(state, viewService),
  );
}

Widget _itemWidget(ListState state, ViewService viewService) {
  print('state ddddd $state');
  print('数据是不是空 ${state.itemCount}');
  if (state.items != null) {
    ///使用列表
    return ListView.builder(
      itemBuilder: viewService.buildAdapter().itemBuilder,
      itemCount: viewService.buildAdapter().itemCount,
    );
  } else {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
