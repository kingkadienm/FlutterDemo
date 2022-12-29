import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_study/list_edit/item/state.dart';

//TODO replace with your own action
enum ListAction { updateItem }

class ListActionCreator {
  static Action updateItem(var list) {
    for (var item in list) {
      if (item is ItemState) {
        print('action 接受到的数据 ${item.title}');
      }
    }
    return Action(ListAction.updateItem, payload: list);
  }
}
