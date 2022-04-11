import 'package:ebuy/core/store.dart';
import 'package:ebuy/models/ebuy.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {

  late EBuyModel _eBuy;

  // Collection of IDs - store IDs of each item
  final List<int> _itemIds = [];

  // Get EBuy
  EBuyModel get eBuy => _eBuy;

  //Set EBuy
  set eBuy(EBuyModel newEBuy) {
    assert(newEBuy != null);
    _eBuy = newEBuy;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _eBuy.getById(id)).toList();

  // Get total price
  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);

}

class AddMutation extends VxMutation<MyStore>{
  final Item item;

  AddMutation(this.item);

  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore>{
  final Item item;

  RemoveMutation(this.item);

  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}
