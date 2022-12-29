import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_study/list/bean/item_detail_bean.dart';

class ItemState implements Cloneable<ItemState> {
 late Datas itemDetail;

  ItemState({required this.itemDetail});
  // ItemState( );

  @override
  ItemState clone() {
    return ItemState(itemDetail: itemDetail)
        ..itemDetail = itemDetail;
  }
}

ItemState initState(Map<String, dynamic> args) {
  return ItemState(itemDetail:  Datas());
}
